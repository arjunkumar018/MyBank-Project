using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;



namespace MyBank.Admin
{
    public partial class Branch : System.Web.UI.Page
    {
        SqlConnection Arjun = new SqlConnection(ConfigurationManager.ConnectionStrings["Parth"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["adminId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                getBranches();
            }

        }

        protected void branches_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = branches.DataKeys[e.RowIndex].Values["id"].ToString();
            string name = (branches.Rows[e.RowIndex].FindControl("txtname") as TextBox).Text;
            string code = (branches.Rows[e.RowIndex].FindControl("txtcode") as TextBox).Text;
            string address = (branches.Rows[e.RowIndex].FindControl("txtaddress") as TextBox).Text;

            string query = $"UPDATE Branch set name='{name}',code='{code}',address='{address}' WHERE id='{id}'";
            Arjun.Open();
            new SqlCommand(query, Arjun).ExecuteNonQuery();
            branches.EditIndex = -1;
            getBranches();
        }

        protected void branches_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = branches.DataKeys[e.RowIndex].Values["id"].ToString();
            string query = $"DELETE FROM Branch where id='{id}'";
            Arjun.Open();
            new SqlCommand(query, Arjun).ExecuteNonQuery();
            getBranches();
           
        }

        protected void branches_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            branches.EditIndex = -1;
            getBranches();
        }

        protected void branches_RowEditing(object sender, GridViewEditEventArgs e)
        {
            branches.EditIndex = e.NewEditIndex;
            getBranches();         
        }

        public void getBranches()
        {
            DataTable tb1 = AdminLogin.GetBranches();
            branches.DataSource = tb1;
            branches.DataBind();
        }
    }
}
