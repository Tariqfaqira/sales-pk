<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="UserLogin.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.UserLogin" %>
<%@ MasterType VirtualPath="~/User_Interface_Layer/MasterPage.Master" %>


<asp:Content ID="UserLogin" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <form runat="server" style="background-color: #E1EFDA;">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Log in Sales.pk</h3>
            </div>
            <div class="panel-body bg-success">
                
                <div class="form-group row">
                    <label for="txtEmailLgn" class="col-sm-3 col-form-label col-form-label-lg">Email:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmailLgn" class="form-control form-control-lg" TextMode="Email" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="txtPswrdLgn" class="col-sm-3 col-form-label col-form-label-lg">Password:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtPswrdLgn" class="form-control form-control-lg" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div style="margin-left:25%">
                    <asp:Label ID="errorBox" runat="server" class="center-block text-danger" Text=""></asp:Label>
                </div>
                <div class="well">
                    <asp:Button ID="loginBtn" runat="server" Text="Login" class="center-block" OnClick="loginBtn_Click1" Width="100px"/>
                </div>
            </div>
        </div>
    </form>
</asp:Content>



