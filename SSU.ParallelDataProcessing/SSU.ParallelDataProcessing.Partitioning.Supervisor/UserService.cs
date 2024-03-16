using SSU.ParallelDataProcessing.Partitioning.DAL;

namespace SSU.ParallelDataProcessing.Partitioning.Supervisor
{
    public class UserService
    {
        public UserService() { }

        public UserDTO[] GetUsers()
        {
            return new UsersDAL().GetUsers().Select(u => new UserDTO()
            { 
                Id = u.Id,
                Age = u.Age,
                Login = u.Login,
                FullName = u.FullName,
                Email = u.Email,
            }).ToArray();
        }

        public void AddUser(UserDTO user)
        {
            new UsersDAL().AddUser(new User()
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
