using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Prodavnica_Artikl
{
    public class Connection
    {
        static string _connectionString = "Data Source = .\\sqlexpress; Initial Catalog = Prodavnica; Integrated Security = True;";

        public static SqlCommand GetCommand(string procedure)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(_connectionString);
            cmd.Connection.Open();
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = procedure;

            return cmd;
        }
    }
}