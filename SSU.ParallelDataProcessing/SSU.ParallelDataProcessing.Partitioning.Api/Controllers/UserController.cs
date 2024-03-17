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

        [HttpGet("")]
        public UserDTO[] GetUsers()
        {
            return new UserService().GetUsersWithReplications();
        }

        [HttpPost("")] 
        public void AddUser(UserDTO user)
        {
            new UserService().AddUserWithReplication(user);
        }
    }
}
