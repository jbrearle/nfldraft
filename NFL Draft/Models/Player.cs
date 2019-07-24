using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NFL_Draft.Models
{
    public class Player
    {
        public IList<Player> Players { get; set; }

        public string TeamId { get; set; }

        public int CategoryId { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public bool IsAvailable { get; set; }
    }
}
