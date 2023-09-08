using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace MyBank
{
    public partial class UpdatePass : System.Web.UI.Page
    {
        SqlConnection Arjun = new SqlConnection(ConfigurationManager.ConnectionStrings["Parth"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"]==null)
            {
                Response.Redirect("FrgtPass.aspx");
            }
            if(!IsPostBack)
            {

            }

        }

        protected void updbtn_Click1(object sender, EventArgs e)
        {
            Arjun.Open();
            string query = $" UPDATE Customer set password='{Newpass.Text}' where email='{email.Text}'";
            SqlCommand cmd = new SqlCommand(query, Arjun);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Response.Write("<script>alert('Updated successfully....!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Not Updated.....!')</script>");
            }
            Arjun.Close();
        }
    }
}