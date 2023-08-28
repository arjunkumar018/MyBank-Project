<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyBank.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <h1 class="text-center mt-5" style="color:blue;letter-spacing:20px; background-color:yellow;">Register User</h1>
    <br />
   
    <div class="container" style="border:4px solid red;">
        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" runat="server">
        </div>
        <div class="mb-3">
            <label for="age" class="form-label">Age</label>
            <input type="number" class="form-control" id="age" runat="server">
        </div>
        <div class="mb-3">
            <label for="gender" class="form-label">Gender</label>
            <input type="text" class="form-control" id="gender" runat="server">
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" runat="server">
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" runat="server">
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Address</label>
            <textarea cols="5" rows="7" runat="server" id="address" class="form-control"></textarea>
        </div>
        <div class="mb-3">
            <label for="code" class="form-label">Branch Code</label>
            <asp:DropDownList ID="branches" runat="server" class="form-select"></asp:DropDownList>
        </div>
         
        <asp:Button ID="btn" runat="server" Text="Register" class="btn btn-primary" OnClick="btn_Click" />
         <br />
         <br />
    </div>
    <br />
   

</asp:Content>
