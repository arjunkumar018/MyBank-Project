using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyBank
{
    public class UserLogin
    {
        static SqlConnection Arjun = new SqlConnection(ConfigurationManager.ConnectionStrings["Parth"].ConnectionString);

        public static int addCustomer(string name, string age, string gender, string email, string password, string address, string branchid)
        {
            Arjun.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd");

            string query = "INSERT INTO Customer(name,age,gender,email,password,address,branchid,balance,openOn,status,maxAmount,minAmount)" +
                           $"VALUES ('{name}','{age}','{gender}','{email}','{password}','{address}','{branchid}','0','{date}','active','10000','1000')";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            int x = cmd.ExecuteNonQuery();
            Arjun.Close();
            return x;
        }
        public static DataTable checkCustomer(string email)
        {
            Arjun.Open();
            string query = $"SELECT * FROM Customer WHERE email='{email}'";
            SqlDataAdapter dr = new SqlDataAdapter(query, Arjun);
            DataTable table = new DataTable();
            dr.Fill(table);
            Arjun.Close();
            return table;
        }

        public static DataTable getCustomer(string id)
        {
            Arjun.Open();
            string query = $"SELECT * FROM Customer where id='{id}'";
            SqlDataAdapter dr = new SqlDataAdapter(query, Arjun);
            DataTable table = new DataTable();
            dr.Fill(table);
            Arjun.Close();
            return table;
           
        }

        public static int depositeAmount(int Amount, int newAmount, string id)
        {
            Arjun.Open();
            string query = $"UPDATE Customer SET balance='{newAmount}' WHERE id='{id}';"
                + $"INSERT INTO transactions(amount,toAccount,remark) VALUES('{Amount}','{id}','deposite')";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            int x = cmd.ExecuteNonQuery();
            Arjun.Close();
            return x;
        }

        public static int withdrawAmount(int Amount, int newAmount, string id)
        {
            Arjun.Open();
            string query = $"UPDATE Customer SET balance='{newAmount}' WHERE id='{id}';"
                + $"INSERT INTO transactions(amount,fromAccount,remark) VALUES('{Amount}','{id}','withdraw')";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            int x = cmd.ExecuteNonQuery();
            Arjun.Close();
            return x;
        }

        public static int transferAmount(int Amount, int toAmount, int fromAmount, string toId, string fromId)
        {
            Arjun.Open();
            string query =
                $"UPDATE Customer SET balance='{fromAmount}' WHERE id='{fromId}';"
                + $"UPDATE Customer SET balance='{toAmount}' WHERE id='{toId}';"
                + $"INSERT INTO transactions(amount,fromAccount,toAccount,remark) VALUES('{Amount}',{fromId},'{toId}','transfer')";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            int x = cmd.ExecuteNonQuery();
            Arjun.Close();
            return x;
        }

    }
}