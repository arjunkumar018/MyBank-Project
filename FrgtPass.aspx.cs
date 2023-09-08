using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;
using MyBank.MyMail;

namespace MyBank
{
    public partial class FrgtPass : System.Web.UI.Page
    {
        public string pass;
        public string MailEmail = ConfigurationManager.AppSettings["MailEmail"];
        public string MailPassword = ConfigurationManager.AppSettings["MailPassword"];
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendbtn_Click(object sender, EventArgs e)
        {
            string RandomString()
            {
                StringBuilder builder = new StringBuilder();
                Random random = new Random();
                int r;
                for(int i =0;i<3;i++)
                {
                    r = Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65));
                    builder.Append(r);
                }
                return builder.ToString();
            }
            pass = RandomString();
            Session["password"] = pass;

            new SendMails().OtpMail(email.Text, pass);
            Response.Write("<script>alert('Otp Sended Successfully..!')</script>");
        }

        protected void sendbtn0_Click(object sender, EventArgs e)
        {
            if (Otp.Text == Session["password"].ToString())
            {
                Session["email"] = email.Text;
                Response.Redirect("UpdatePass.aspx");
            }
            else
            {
                Response.Write("<script>alert('Inavalid OTP...!')</script>");
            }
        }
    }
}