﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyBank.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="text-center mt-5" style="color:blue;letter-spacing:12px;background-color:yellow;">User Login</h1>

     <br />
        <br />
    <div class="container" style="border:4px solid red; background-color:azure;">      
       
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" runat="server">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" runat="server">
        </div>
         
        <asp:Button ID="lgbtn" runat="server" Text="Login" class="btn btn-primary" OnClick="lgbtn_Click" />
<%--        <asp:Button ID="btn" runat="server" Text="Login" class="btn btn-primary" />--%>
        <br />
        <br />
    </div>
     <br />
        <br />
</asp:Content>
