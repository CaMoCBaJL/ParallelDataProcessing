using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System.Text.RegularExpressions;

namespace SSU.ParallelDataProcessing.Partitioning.DAL
{
    public class ShardableUserDAL
    {
        private readonly Dictionary<string, string> _shardTableNames = new Dictionary<string, string>(){
            {" 1", "User.A-G" },
            //"User.H-N", "User.O-U", "User.V-Z" }
        };

        public List<User> GetUsers()
        {
            var result = new List<User>();

            foreach (var shardData in _shardTableNames)
            {
                if (!TryGetDbContext(shardData.Value, out var context))
                {
                    continue;
                }

                result.AddRange(context.Users.AsEnumerable());
            }

            return result;
        }

        public void AddUser(User user)
        {

        }

        private string GetShardName(User user)
        {
            foreach (var shardTable in _shardTableNames)
            {
                if (Regex.IsMatch(user.FullName, shardTable.Key))
                {
                    return shardTable.Value;
                }
            }

            throw new Exception("Не корректный ввод!");
        }

        private bool TryGetDbContext(string dbName, out ShardableUserContext userContext)
        {
            var contextOptionsBuilder = new DbContextOptionsBuilder<ShardableUserContext>();
            contextOptionsBuilder.UseModel(CreateModel(dbName));

            userContext = new ShardableUserContext();

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
