<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="MyBank.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <%@ Import Namespace="MyBank" %>
    <%@ Import Namespace="System.Data" %>

     <% 
        DataRow data = UserLogin.getCustomer(Session["UserId"].ToString()).Rows[0];
    %><a href="Transfer.aspx">Transfer.aspx</a>
        
    <center style="color:red;">
      <asp:GridView runat="server" ID="transaction"></asp:GridView>
        </center>

    <br />
    <br />
</asp:Content>
