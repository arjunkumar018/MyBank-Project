﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyBank;

namespace MyBank
{
    public partial class Deposite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            if (Session["UserId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            int Amount = int.Parse(amount.Value);
            if (Amount < 1)
            {
                Response.Write("<script>alert('invalid amount....!')</script>");
                return;
            }
            int oldAmount = int.Parse(UserLogin.getCustomer(Session["UserId"].ToString()).Rows[0]["balance"].ToString());

            int newAmount = Amount + oldAmount;

            string id = Session["UserId"].ToString();

            int x = UserLogin.depositeAmount(Amount, newAmount, id);
            if (x > -1)
            {
                Response.Write("<script>alert('amount deposite successfully....!')</script>");
            }
            else
            {
                Response.Write("<script>alert('amount deposite failed....!')</script>");
            }
        }
    }
}