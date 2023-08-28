<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="Withdrawals.aspx.cs" Inherits="MyBank.Withdrawal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <%@ Import Namespace="MyBank" %>
    <%@ Import Namespace="System.Data" %>

     <% 
        DataRow data = UserLogin.getCustomer(Session["UserId"].ToString()).Rows[0];
    %>

    <div class="container">
        <div class="mb-3">
            <label for="amount" class="form-label">Amount : </label>
            <input type="number" class="form-control" id="amount" runat="server">
        </div>
         
        <asp:Button ID="btn" runat="server" Text="Withdrawals" class="btn btn-primary" OnClick="btn_Click" />
    </div>

</asp:Content>
