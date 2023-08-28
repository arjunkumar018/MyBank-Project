using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyBank.Admin
{
    public partial class AddBranch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string nm = name.Value;
            string cd = code.Value;
            string add = location.Value;

            int val = AdminLogin.addBranch(nm, cd, add);

            if(val>0)
            {
                Response.Write("<script>alert('successfuly branch added....!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Braches Added Failed....!')</script>");
            }
        }
    }
}