using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using System.Text.RegularExpressions;

namespace SSU.ParallelDataProcessing.Partitioning.DAL.Sharding
{
    public class ShardableUserDAL
    {
        private readonly Dictionary<string, string> _shardTableNames = new Dictionary<string, string>(){
            {@"^[A-Ga-g]", "User.A-G" },
            {@"^[H-Nh-n]", "User.H-N" },
            {@"^[O-Uo-u]", "User.O-U" },
            {@"^[V-Zv-z]", "User.V-Z" },
        };

        private readonly string _dumpShardTableName = "Other_data";

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
            var shard = GetShardName(user);

            if (!TryGetDbContext(shard, out var context))
            {
                throw new Exception("Шард занят. ждитес");
            }
            user.Id = context.Users.Count() + 1;

            context.Add(user);
            context.SaveChanges();
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

            return _dumpShardTableName;
        }

        private bool TryGetDbContext(string shardName, out ShardableUserContext userContext)
        {
            var contextOptionsBuilder = new DbContextOptionsBuilder<ShardableUserContext>();
            contextOptionsBuilder.UseModel(CreateModel(shardName));

            userContext = new ShardableUserContext(contextOptionsBuilder.Options, shardName);

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
