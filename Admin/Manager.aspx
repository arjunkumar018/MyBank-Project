<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="MyBank.Admin.Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
             <br />
     <h1 class="text-center" style="color:blue;letter-spacing:12px;background-color:yellow;">All Managers</h1>
    <br />
             <br />
         <div class="container" style="border:4px solid red; ">
             <br />
             
             <asp:GridView ID="managers" runat="server" AutoGenerateColumns="false"
                 DataKeyNames="id" 
                 OnRowEditing="managers_RowEditing"
                 OnRowCancelingEdit="managers_RowCancelingEdit"
                 OnRowUpdating="managers_RowUpdating" 
                 OnRowDeleting="managers_RowDeleting" CssClass="table" >
                 <Columns>
                     <asp:TemplateField HeaderText="Manager Name">
                         <ItemTemplate>
                             <asp:Label ID="lblname" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                         </ItemTemplate>
                         <EditItemTemplate>
                             <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                         </EditItemTemplate>
                     </asp:TemplateField>
                     <asp:TemplateField HeaderText="Branch Id">
                         <ItemTemplate>
                             <asp:Label ID="lblbranch" runat="server" Text='<%# Bind("branchid") %>'></asp:Label>
                         </ItemTemplate>
                         <EditItemTemplate>
<%--                             <asp:TextBox ID="txtbranch" runat="server" Text=<%# Bind("branchid") %>></asp:TextBox>--%>
                             <asp:DropDownList ID="branches" runat="server" ></asp:DropDownList>
                         </EditItemTemplate>
                     </asp:TemplateField>
                     <asp:CommandField  ShowEditButton="true" HeaderText="Edit" ControlStyle-CssClass="btn btn-success" />
                     <asp:CommandField  ShowDeleteButton="true" HeaderText="Delete" ControlStyle-CssClass="btn btn-danger" />
                 </Columns>
                 
             </asp:GridView>
        <br />
            
         </div>
    <br />
             <br />
</asp:Content>
