﻿using System.Text.Json.Serialization;

namespace SSU.ParallelDataProcessing.Partitioning.Supervisor
{
    public class UserDTO
    {
        [JsonIgnore]
        public int Id { get; set; }

        public string Login { get; set; }

        public byte Age { get; set; }

        public string Email { get; set; }

        public string FullName { get; set; }
    }
}
