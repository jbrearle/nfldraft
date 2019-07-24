using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NFL_Draft.DAL;
using NFL_Draft.Models;

namespace NFL_Draft.Controllers
{
    public class HomeController : Controller
    {
        //setting up a connection to the DAO
        private IPlayerDAO playerDAO;

        public HomeController(IPlayerDAO playerDAO)
        {
            this.playerDAO = playerDAO;
        }


        public IActionResult Index()
        {
            return View();
        }


        public IActionResult PlayerPage(Player player)
        {
            IList<Player> players = playerDAO.GetAllPlayers();

            player.Players = players;

            return View(players);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
