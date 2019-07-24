using NFL_Draft.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NFL_Draft.DAL
{
    public interface IPlayerDAO
    {

        IList<Player> GetAllPlayers();
    }
}
