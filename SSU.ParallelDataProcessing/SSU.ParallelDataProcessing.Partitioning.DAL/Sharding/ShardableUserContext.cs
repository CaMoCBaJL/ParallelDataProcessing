using Microsoft.EntityFrameworkCore;

namespace SSU.ParallelDataProcessing.Partitioning.DAL.Sharding
{
    public class ShardableUserContext : DbContext
    {
        private readonly string _tableName;

        public ShardableUserContext(string tableName)
        {
            _tableName = tableName;
        }

        public ShardableUserContext(DbContextOptions<ShardableUserContext> options, string tableName)
        : base(options)
        {
            _tableName = tableName;
        }

        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
            => optionsBuilder
                .UseSqlServer($"data source=DESKTOP-I90DUCB;initial catalog=SSU.ParallelProcessing;trusted_connection=true;TrustServerCertificate=True");

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>().ToTable(_tableName);

            modelBuilder.Entity<User>().HasKey(x => x.Id);
        }
    }
}
