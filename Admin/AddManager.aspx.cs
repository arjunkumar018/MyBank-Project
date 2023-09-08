using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using MyBank.MyMail;

namespace MyBank.Admin
{
    public partial class AddManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["adminId"]==null)
            {
                Response.Redirect("Login.aspx");            
            }
            if(!IsPostBack)
            {
                DataTable dataTable = AdminLogin.GetBranches();
                branches.DataSource = dataTable;
                branches.DataValueField = "id";
                branches.DataTextField = "name";
                branches.DataBind();
                branches.Items.Insert(0, "---select branch---");
             
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string nm = name.Value;
            string branchid = branches.SelectedValue;
            String em = email.Value;

            if (AdminLogin.selectBranch(branchid).Rows.Count != 0)
            {
                Response.Write("<script>alert('branch already assigned....!')</script>");
                return;
            }

            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$";
            StringBuilder pass = new StringBuilder();
            Random rnd = new Random();
            int length = 8;
            while (0 < length--)
            {
                pass.Append(valid[rnd.Next(valid.Length)]);
            }

            string password = pass.ToString();



            int val = AdminLogin.addManager(nm, branchid, em, password);
            new SendMails().newManager(em, password, nm);
            if (val>0)
            {
                Response.Write("<script>alert('successfuly manager added....!')</script>");
            }
            else
            {
                Response.Write("<script>alert('manager adding failed....!')</script>");
            }
        }
    }
}