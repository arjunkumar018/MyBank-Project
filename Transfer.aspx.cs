using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MyBank
{
    public partial class Transfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["UserId"] == null)
            {
                Response.Redirect("login.aspx");
            }
            string status = UserLogin.getCustomer(Session["UserId"].ToString()).Rows[0]["status"].ToString();

            if (status == "freeze")
            {
                Response.Write("<script>alert('account is freeze, cant transfer amount....!')</script>");

                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "3;url=Dashboard.aspx";
                this.Page.Controls.Add(meta);
            }

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            string UserId = Session["UserId"].ToString();

            string toAccountNo = accountNo.Value;

            if(toAccountNo==UserId)
            {
                Response.Write("<script>alert('you cant transfer on your account....!')</script>");
                return;
            }

            if (UserLogin.getCustomer(toAccountNo).Rows.Count == 0)
            {
                Response.Write("<script>alert('invalid account number....!')</script>");
                return;
            }

            DataRow toAccountRow = UserLogin.getCustomer(toAccountNo).Rows[0];




           
            int transferAmount = int.Parse(amount.Value);

            DataRow user = UserLogin.getCustomer(UserId).Rows[0];

            int fromBalance = int.Parse(user["balance"].ToString());
            int minAmount = int.Parse(user["minAmount"].ToString());
            int maxAmount = int.Parse(user["maxAmount"].ToString());

            if ((fromBalance - transferAmount) < minAmount)
            {
                Response.Write("<script>alert('insufficient balance....!')</script>");
                return;
            }

            if (transferAmount > maxAmount)
            {
                Response.Write($"<script>alert('yout maximum transfer limit is {maxAmount} ....!')</script>");
                return;
            }

            int toAmount = int.Parse(toAccountRow["balance"].ToString()) + transferAmount;
            int fromAmount = fromBalance - transferAmount;

            int x = UserLogin.transferAmount(transferAmount, toAmount, fromAmount, toAccountNo, UserId);
            if (x > -1)
            {
                Response.Write("<script>alert('transfer successfully....!')</script>");
            }
            else
            {
                Response.Write("<script>alert('transfer failed....!')</script>");
            }


        }
    }
}