using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyBank.Manager
{
    public class ManagerLogic
    {
        static SqlConnection Arjun = new SqlConnection(ConfigurationManager.ConnectionStrings["Parth"].ConnectionString);

        public static DataTable checkManager(string email)
        {
            Arjun.Open();
            string query = $"SELECT * FROM Manager WHERE email='{email}'";
            SqlDataAdapter dr = new SqlDataAdapter(query, Arjun);
            DataTable table = new DataTable();
            dr.Fill(table);
            Arjun.Close();
            return table;
        }

        public static DataTable getCustomersofManager(string ManagerId)
        {
            string query = $"select Customer.id as id, Customer.name as name, status from Customer join Manager on Manager.branchid=Customer.branchid where Manager.id='{ManagerId}'";
            Arjun.Open();
            SqlDataAdapter dr = new SqlDataAdapter(query, Arjun);
            DataTable table = new DataTable();
            dr.Fill(table);
            Arjun.Close();
            return table;
        }

        public static void updateCutsomerStatus(string id, string status)
        {
            if (status == "--select status--")
            {
                return;
            }
            string query = $"UPDATE Customer SET status='{status}' WHERE id='{id}'";
            Arjun.Open();
            new SqlCommand(query, Arjun).ExecuteNonQuery();
            Arjun.Close();
        }
    }
}