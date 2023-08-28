
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddBranch.aspx.cs" Inherits="MyBank.Admin.AddBranch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1 class="text-center mt-5" style="color:blue;letter-spacing:20px;background-color:yellow;">Add--Branch</h1>
    <br />
    <br />
    <div class="container" style="border:4px solid red; background-color:aqua;">
        <br />
        <div class="mb-3">
            <label for="name" class="form-label">Branch Name</label>
            <input type="text" class="form-control" id="name" runat="server">
        </div>

        <div class="mb-3">
            <label for="code" class="form-label">Branch Code</label>
            <input type="text" class="form-control" id="code" runat="server">
        </div>
         <div class="mb-3">
            <label for="location" class="form-label">Branch Location</label>
             <textarea cols="10" rows="5" class="form-control" id="location" runat="server"></textarea>
        </div>
       
        <asp:Button ID="btn" runat="server" Text="Add Branch" class="btn btn-primary" OnClick="btn_Click"/>
        <br />
        <br />
    </div>
    <br />
    <br />
</asp:Content>
