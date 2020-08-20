<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="Subscribe_Page.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.ReportingFoldr.Subscribe_Page" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>



<asp:Content ID="Subscribe_Page" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <form id="form1" runat="server" style="background-color:#E1EFDA; border:4px solid #347AB6">
        <div class="table-responsive">
            <div style="padding: 7px">
                Show Report of:<asp:Button ID="Product" runat="server" OnClick="Product_Click" Text="Product" />
                <asp:Button ID="Subscribed" runat="server" OnClick="Subscribe_Click" Text="Subscribed" />
                <asp:Button ID="Login" runat="server" OnClick="Login_Click" Text="Login" />
                <asp:Button ID="Registered" runat="server" OnClick="Register_Click" Text="Registered" />
            </div>
            <br />
            <div style="padding: 7px">
                Start Time:<asp:TextBox ID="startdate" runat="server" TextMode="Date"> </asp:TextBox>
                End Time:<asp:TextBox ID="enddate" runat="server" TextMode="Date"> </asp:TextBox>
            </div>
            <br />
            <br />
            <div style="padding: 5px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="size" runat="server" OnClick="size_Click" Text="By Size" />
                <asp:Button ID="price" runat="server" OnClick="price_Click" Text="By Price" />
                <asp:Button ID="date" runat="server" OnClick="date_Click" Text="By Date" />
                <asp:Button ID="email" runat="server" OnClick="email_Click" Text="By Email" />
                <asp:Button ID="brand" runat="server" OnClick="brand_Click" Text="BY Brand" />
            </div>


            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="897px">
            </rsweb:ReportViewer>

            <br />
            <br />

        </div>
    </form>
</asp:Content>



