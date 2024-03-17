using SSU.ParallelDataProcessing.Partitioning.DAL;

namespace SSU.ParallelDataProcessing.Partitioning.Supervisor
{
    public class UserService
    {
        public UserService() { }

        public UserDTO[] GetUsersWithReplications()
        {
            return new ReplicapableUsersDAL().GetUsers().Select(u => new UserDTO()
            { 
                Id = u.Id,
                Age = u.Age,
                Login = u.Login,
                FullName = u.FullName,
                Email = u.Email,
            }).ToArray();
        }

        public void AddUserWithReplication(UserDTO user)
        {
            new ReplicapableUsersDAL().AddUser(new User()
            {
                Id = user.Id,
                Age = user.Age,
                Login = user.Login,
                FullName = user.FullName,
                Email = user.Email,
            });
        }

        public UserDTO[] GetUsersWithSharding()
        {
            return new ShardableUserDAL().GetUsers().Select(u => new UserDTO()
            {
                Id = u.Id,
                Age = u.Age,
                Login = u.Login,
                FullName = u.FullName,
                Email = u.Email,
            }).ToArray();
        }

        public void AddUserWithSharding(UserDTO user)
        {
            new ShardableUserDAL().AddUser(new User()
            {
                Id = user.Id,
                Age = user.Age,
                Login = user.Login,
                FullName = user.FullName,
                Email = user.Email,
            });
        }
    }
}
