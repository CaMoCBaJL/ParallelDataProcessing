using Microsoft.AspNetCore.Mvc;
using SSU.ParallelDataProcessing.Partitioning.Supervisor;

namespace SSU.ParallelDataProcessing.Partitioning.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {
        private readonly ILogger<UserController> _logger;

        public UserController(ILogger<UserController> logger)
        {
            _logger = logger;
        }

        [HttpGet("with-replication")]
        public UserDTO[] GetUsers()
        {
            return new UserService().GetUsersWithReplications();
        }

        [HttpPost("with-replication")] 
        public void AddUser(UserDTO user)
        {
            new UserService().AddUserWithReplication(user);
        }

        [HttpGet("with-sharding")]
        public UserDTO[] GetUsersWithSharding()
        {
            return new UserService().GetUsersWithSharding();
        }

        [HttpPost("with-sharding")]
        public void AddUserWithSharding(UserDTO user)
        {
            new UserService().AddUserWithSharding(user);
        }
    }
}
