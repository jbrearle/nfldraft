using NFL_Draft.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace NFL_Draft.DAL
{
    public class PlayerSqlDAO : IPlayerDAO
    {
        private string connectionString;
        public PlayerSqlDAO(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public IList<Player> GetAllPlayers()
        {
            List<Player> players = new List<Player>();
            try
            {
                //create a connection and execute a statement to get all players 
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string sql = $"SELECT * from players";

                    SqlCommand cmd = new SqlCommand(sql, conn);

                    SqlDataReader reader = cmd.ExecuteReader();
                    //for each row, create  a new player and put it in a list. 
                    // Loop through each row
                    while (reader.Read())
                    {
                        //Create a Forum
                        Player player = new Player();
                        player.TeamId = Convert.ToString(reader["TeamId"]);
                        player.CategoryId = Convert.ToInt32(reader["category_id"]);
                        player.FirstName = Convert.ToString(reader["first_name"]);
                        player.LastName = Convert.ToString(reader["last_name"]);
                        player.IsAvailable = Convert.ToBoolean(reader["is_available"]);
                        players.Add(player);
                    }
                }
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            return players;
        }

        

        

    }


}

