<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="UpdatePass.aspx.cs" Inherits="MyBank.UpdatePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 273px;
        }
        .auto-style3 {
            width: 457px;
        }
        .auto-style4 {
            width: 366px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
        <div class="container" style="border:3px solid red;" >
                         <h1 style="text-align:center;color:red;background-color:aqua;">Change<span style="color:blue;">Password</span></h1>
            <hr style="border:4px solid yellow;" />
            <br />
            <div style="background-color:azure;">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2" style="font-size:x-large;">Email:-</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="email" runat="server" placeholder="Enter Your Email..." Height="45px" Width="442px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2" style="font-size:x-large;">NewPassword:-</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="Newpass" runat="server" placeholder="Enter Your New Password...." Height="45px" Width="442px" ></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2" style="font-size:x-large;">ConfirmPassword:-</td>
                    <td class="auto-style3">
                       <asp:TextBox ID="ConfirmPass" runat="server" placeholder="Enter Your Confirm Password...." Height="45px" Width="442px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button  ID="updbtn" runat="server" Text="ChangePass" OnClick="updbtn_Click1" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="backto" runat="server" Text="GoToLoginPage" href="Login.aspx"></asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
         </div>
            <br />
       </div>
    <br />
    <br />
</asp:Content>
