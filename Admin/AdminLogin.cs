using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace MyBank.Admin
{
    
    public class AdminLogin
    {
      static  SqlConnection Arjun = new SqlConnection(ConfigurationManager.ConnectionStrings["Parth"].ConnectionString);
        public static bool CheckAdmin(string email,string password)
        {
            Arjun.Open();
            string query = $"SELECT * FROM AdminLogin where Email='{email}' and Password='{password}'";
            SqlCommand cmd = new SqlCommand(query,Arjun);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Arjun.Close();
                return true;
            }
            else
            {
                Arjun.Close();
                return false;
            }
        }
        public static int addBranch(string name,string code,string address)
        {
            Arjun.Open();
            string query = $" INSERT INTO Branch(name,code,address) VALUES('{name}','{code}','{address}')";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            var x = cmd.ExecuteNonQuery();
            Arjun.Close();
            return x;
        }
        public static DataTable GetBranches()
        {
            Arjun.Open();
            string query = $"SELECT * FROM Branch";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            Arjun.Close();
            return dt;
        }
        public static int addManager(string name,string branchid)
        {
            Arjun.Open();
            string query = $"INSERT INTO  Manager(name,branchid) Values('{name}','{branchid}')";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            var x = cmd.ExecuteNonQuery();
            Arjun.Close();
            return x;
        }
        public static DataTable GetManager()
        {
            
            Arjun.Open();
            string query = $"SELECT * FROM Manager";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            Arjun.Close();
            return dt;
        }

        public static DataTable GetManagers(string id)
        {
            Arjun.Open();
            string query = $"SELECT * FROM Manager WHERE id='{id}'";
            SqlDataAdapter dr = new SqlDataAdapter(query, Arjun);
            DataTable table = new DataTable();
            dr.Fill(table);
            Arjun.Close();
            return table;
        }

        public static void updateManager(string id, string name, string branchid)
        {
            Arjun.Open();
            string query = $"UPDATE Manager SET name='{name}',branchid='{branchid}' WHERE id='{id}'";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            cmd.ExecuteNonQuery();
            Arjun.Close();
        }

        public static DataTable selectBranch(string branchid)
        {
            Arjun.Open();
            string query = $"select * from Manager where branchid = '{branchid}'";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            SqlDataAdapter dr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dr.Fill(dt);
            Arjun.Close();
            return dt;
        }
    }
}