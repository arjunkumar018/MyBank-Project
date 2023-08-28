<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyBank.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <div class="container mt-5" style="border:5px solid red;background-color:azure;">
        <br />
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card" style="background-color:silver;">
                    <center style="background-color:yellow;  letter-spacing: 20px;">
                         <div class="card-header">
                             <h1 style="color:red;">Admin-<span style="color:blue">Login</span></h1>
                    </div>
                    </center>
                    <div class="card-body">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="email" placeholder="Enter username" runat="server">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" placeholder="Password" runat="server">
                            </div>
                        <br />
                        <asp:Button ID="logbtn" runat="server" Text="Login" OnClick="logbtn_Click" class="btn btn-primary btn-block"/>
                   </div>
                </div>
               <br />
            </div>
        </div>
    </div>
    <br />
</asp:Content>
