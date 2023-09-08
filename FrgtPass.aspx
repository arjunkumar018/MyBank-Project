<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="FrgtPass.aspx.cs" Inherits="MyBank.FrgtPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            width: 374px;
        }
        .auto-style4 {
            width: 423px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    <div class="container" style="border:3px solid red;" >

         <div class="table-responsive border">
             <h1 style="text-align:center;color:red;background-color:aqua;">SEND<span style="color:blue;">--OTP</span></h1>
             <br />
             <br />
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">Email:-</td>
                     <td class="auto-style3">
                         <asp:TextBox ID="email" runat="server" placeholder="Enter Your Email Here...." Height="41px" Width="408px"></asp:TextBox>
                     </td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">
                         <asp:Button  ID="sendbtn" runat="server" Text="SendOTP" OnClick="sendbtn_Click"/>
                     </td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">EneterOTP:-</td>
                     <td class="auto-style3">
                         <asp:TextBox ID="Otp" runat="server" placeholder="Enter Your OTP Here...." Height="41px" Width="408px"></asp:TextBox>
                     </td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">
                         <asp:Button  ID="sendbtn0" runat="server" Text="Varify" OnClick="sendbtn0_Click"/>
                     </td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td class="auto-style2">&nbsp;</td>
                     <td class="auto-style3">&nbsp;</td>
                     <td>&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
             </table>
             </div>
    </div>

    <br />
    <br />
</asp:Content>
