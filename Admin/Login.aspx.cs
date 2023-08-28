using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBank.Admin;

namespace MyBank.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logbtn_Click(object sender, EventArgs e)
        {
            var em = email.Value;
            var pass = password.Value;

            if(AdminLogin.CheckAdmin(em,pass))
            {
                Session["adminId"] = em;
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid credentials...!')</script>");
            }
        }
    }
}