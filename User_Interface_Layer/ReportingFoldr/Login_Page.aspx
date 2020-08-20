<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="Login_Page.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.Reporting.Login_Page" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Login" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <form runat="server" style="background-color: #E1EFDA;">
        <div>

            &nbsp;&nbsp; Search By:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />

             &nbsp;&nbsp;<br />

        </div>
    </form>
</asp:Content>




