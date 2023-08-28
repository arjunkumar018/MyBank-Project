<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyBank.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <h1 style="text-align:center;background-color:yellow;color:red;">Welcome To Admin Default Page</h1>
    <hr  style="border:4px solid blue;"/>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
     <div class="container">

        <h1 class="text-center" style="color:blue;background-color:yellow;">Welcome Admin ...!</h1>   
         <hr  style="border:3px solid red;"/>
        <div class="row">
            <div class="col-6"><a class="btn btn-outline-success" href="AddBranch.aspx">Add Branch</a></div>
            <div class="col-6"><a class="btn btn-outline-success" href="AddManager.aspx">Add Manager</a></div>
            <div class="col-6"><a class="btn btn-outline-success" href="ShowCustomer.aspx">Show Customers</a></div>
            <div class="col-6"><asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click1" CssClass="btn btn-outline-danger" /></div>
        </div>


    </div>
     <br />
    <br />
</asp:Content>
