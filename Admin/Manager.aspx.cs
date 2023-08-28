using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MyBank;

namespace MyBank.Admin
{
    public partial class Manager : System.Web.UI.Page
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
                GetManger();
            }
        }
        protected void managers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            managers.EditIndex = e.NewEditIndex;
            GetManger();

            string id = managers.DataKeys[e.NewEditIndex].Values["id"].ToString();
            DropDownList branches = (managers.Rows[e.NewEditIndex].FindControl("branches") as DropDownList);
            branches.DataSource = AdminLogin.GetBranches();
            branches.DataValueField = "id";
            branches.DataTextField = "name";
            branches.DataBind();
            branches.Items.Insert(0, "---select branch---");
            string branchId = AdminLogin.GetManagers(id).Rows[0]["branchid"].ToString();
            branches.Items.FindByValue(branchId).Selected = true;
        }

        protected void managers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = managers.DataKeys[e.RowIndex].Values["id"].ToString();
            string name = (managers.Rows[e.RowIndex].FindControl("txtname") as TextBox).Text;
            string branchid = (managers.Rows[e.RowIndex].FindControl("branches") as DropDownList).SelectedValue;


            if (AdminLogin.selectBranch(branchid).Rows.Count != 0)
            {
                Response.Write("<script>alert('branch already assigned....!')</script>");
                return;
            }


            AdminLogin.updateManager(id, name, branchid);
            Arjun.Open();
            string query = $"UPDATE Manager set name='{name}',branchid='{branchid}' where id='{id}'";
            new SqlCommand(query, Arjun).ExecuteNonQuery();
            Arjun.Close();
            managers.EditIndex = -1;
            GetManger();
        }
        protected void managers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            managers.EditIndex = -1;
            GetManger();
        }
       
        protected void managers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = managers.DataKeys[e.RowIndex].Values["id"].ToString();
            string query = $"DELETE from Manager where id='{id}'";
            Arjun.Open();
            new SqlCommand(query, Arjun).ExecuteNonQuery();
            GetManger();
        }
        public void GetManger()
        {
            DataTable dataTable = AdminLogin.GetManager();
            managers.DataSource = dataTable;
            managers.DataBind();
        }
    }
}