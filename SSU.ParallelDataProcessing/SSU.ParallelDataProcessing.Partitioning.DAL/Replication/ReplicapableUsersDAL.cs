namespace SSU.ParallelDataProcessing.Partitioning.DAL
{
    public class ReplicapableUsersDAL
    {
        private readonly string[] _slaveDbNames = { "SSU.ParallelProcessing.Slave1", "SSU.ParallelProcessing.Slave2", "SSU.ParallelProcessing.Slave3", "SSU.ParallelProcessing.Slave4" };

        private const string _masterDbName = "SSU.ParallelProcessing.Master";

        public User[] GetUsers()
        {
            ReplicapableUserContext context = null;

            foreach (var dbName in _slaveDbNames)
            {
                if (!TryGetDbContext(dbName, out var userContext))
                {
                    continue;
                }

                context = userContext;
            }

            if (context == null)
            {
                if (!TryGetDbContext(_masterDbName, out var userContext))
                {
                    throw new Exception("Все базы заняты! Ждитес.");
                }

                context = userContext;
            }

            var result = context.Users.AsEnumerable().ToArray();
            context.Dispose();

            return result;
        }

        public void AddUser(User user)
        {
            var userCopy = new User()
            {
                Id = user.Id,
                Age = user.Age,
                Login = user.Login,
                Email = user.Email,
                FullName = user.FullName,
            };

            if (!TryGetDbContext(_masterDbName, out var masterContext))
            {
                throw new Exception("Мастер занят! Ждитес.");
            }

            masterContext.Add(user);
            masterContext.SaveChanges();
            masterContext.Dispose();

            foreach (var dbName in _slaveDbNames)
            {
                if (!TryGetDbContext(dbName, out var slaveContext))
                {
                    continue;
                }

                user.Id = userCopy.Id;
                slaveContext.Add(user);
                slaveContext.SaveChanges();
                slaveContext.Dispose();
            }
        }

        private bool TryGetDbContext(string dbName, out ReplicapableUserContext userContext)
        {
            userContext = new ReplicapableUserContext(dbName);

            return userContext.Database.CanConnect();
        }
    }
}
