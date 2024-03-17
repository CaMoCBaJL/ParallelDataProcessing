using Microsoft.EntityFrameworkCore;

namespace SSU.ParallelDataProcessing.Partitioning.DAL
{
    public class ShardableUserContext : DbContext
    {
        public ShardableUserContext()
        {
        }

        public ShardableUserContext(DbContextOptions<ReplicapableUserContext> options)
        : base(options)
        {
        }

        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
            => optionsBuilder
                .UseSqlServer($"data source=DESKTOP-I90DUCB;initial catalog=SSU.ParallelProcessing;trusted_connection=true;TrustServerCertificate=True");

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>().ToTable("User");

            modelBuilder.Entity<User>().HasKey(x => x.Id);
        }
    }
}
