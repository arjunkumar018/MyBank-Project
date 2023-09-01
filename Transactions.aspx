<%@ Page Title="" Language="C#" MasterPageFile="~/Users.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="MyBank.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%@ Import Namespace="MyBank" %>
    <%@ Import Namespace="System.Data" %>

      <% 
        DataRow data = UserLogin.getCustomer(Session["UserId"].ToString()).Rows[0];


%>
    <h1 class="text-center my-5" style="background-color:yellow;">Welcome to <b style="color:red;"><% Response.Write(data["name"]); %></b> <span style="color:blue;"> Transaction....!</span></h1>

    <h1 class="text-center " style="background-color:aquamarine;">All Transactions History</h1>
    <br />


    <div class="container">

        <div class="table-responsive border">
            <table class="table table-primary table-striped table-hover " style="margin: 0;">

                <thead>
                    <tr>
                        <th>Sr No.</th>
                        <th>Transaction Id</th>
                        <th>Remark</th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th>Info</th>
                    </tr>
                </thead>

                <tbody>
                    <% 
                        DataTable table = UserLogin.getTransactions(Session["UserId"].ToString());
                        foreach (DataRow row in table.Rows)
                        {
                            %>

                    <tr>
                        <td><%= row["SrNo"].ToString() %></td>
                        <td><%= row["TId"].ToString() %></td>
                        <td><%= row["Remark"].ToString() %></td>
                        <td><%= row["Amount"].ToString() %></td>
                        <td><%= row["Date"].ToString() %></td>
                        <td><%= row["Info"].ToString() %></td>
                    </tr>
                    <%}
                    %>
                </tbody>
            </table>
        </div>

    </div>

    <br />
    <br />
</asp:Content>
