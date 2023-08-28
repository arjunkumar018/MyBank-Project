<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Branch.aspx.cs" Inherits="MyBank.Admin.Branch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <br />
    <br />
     <h1 class="text-center" style="color:blue;letter-spacing:10px;background-color:yellow;">All--Branches</h1>
    <br />
     <center style="border:4px solid red; background-color:aqua;">
      <asp:GridView ID="branches" runat="server" AutoGenerateColumns="false" DataKeyNames="id" OnRowUpdating="branches_RowUpdating" OnRowDeleting="branches_RowDeleting" OnRowCancelingEdit="branches_RowCancelingEdit" OnRowEditing="branches_RowEditing" CssClass="table" >
          <Columns>
              <asp:TemplateField HeaderText="Branch Name ">
                  <ItemTemplate>
                      <asp:Label ID="lblname" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                  </EditItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Branch Code">
                  <ItemTemplate>
                      <asp:Label ID="lblcode" runat="server" Text='<%# Bind("code") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtcode" runat="server" Text=<%# Bind("code") %>></asp:TextBox>
                  </EditItemTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Branch Location">
                  <ItemTemplate>
                     <asp:Label ID="lbladdress" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtaddress" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                  </EditItemTemplate>
              </asp:TemplateField>
              <asp:CommandField  ShowEditButton="true" HeaderText="Edit" ControlStyle-CssClass="btn btn-success"/>
              <asp:CommandField ShowDeleteButton="true" HeaderText="Delete" ControlStyle-CssClass="btn btn-danger"/>
          </Columns>

      </asp:GridView>
   </center>
    <br />
    <br />
</asp:Content>
