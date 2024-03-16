using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System.Reflection.Emit;

namespace SSU.ParallelDataProcessing.Partitioning.DAL
{
    public class UsersDAL
    {
        private readonly string[] _slaveDbNames = { "User_Slave1", "User_Slave2", "User_Slave3", "User_Slave4" };

        private const string _masterDbName = "User_Master";

        public User[] GetUsers()
        {
            UserContext context = null;

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

        private bool TryGetDbContext(string dbName, out UserContext userContext)
        {
            var contextOptionsBuilder = new DbContextOptionsBuilder<UserContext>();
            contextOptionsBuilder.UseModel(CreateModel(dbName));

            userContext = new UserContext();

            return userContext.Database.CanConnect();
        }

        private IModel CreateModel(string tableName)
        {
            var builder = new ModelBuilder();

            builder.Entity<User>().ToTable(tableName);

            builder.Entity<User>().HasKey(x => x.Id);

            builder.Entity<User>().Property(u => u.Id).HasColumnName("Id");
            builder.Entity<User>().Property(u => u.Id).UseIdentityColumn();
            builder.Entity<User>().Property(u => u.Age).HasColumnName("Age");
            builder.Entity<User>().Property(u => u.Email).HasColumnName("Email");
            builder.Entity<User>().Property(u => u.FullName).HasColumnName("FullName");
            builder.Entity<User>().Property(u => u.Login).HasColumnName("Login");

            return builder.FinalizeModel();
        }
    }
}
