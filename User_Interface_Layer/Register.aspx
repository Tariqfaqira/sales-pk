<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="Register.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.Register" %>


<asp:Content ID="Register" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <form runat="server" style="background-color: #E1EFDA;">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Register on Sales.pk</h3>
            </div>
            <div class="panel-body bg-success">

                <div class="form-group row">
                    <label for="txtEmail" class="col-sm-3 col-form-label col-form-label-lg">Email Address:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtEmail" class="form-control form-control-lg" TextMode="Email" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="txtBrand" class="col-sm-3 col-form-label col-form-label-lg">Brand Name:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtBrand" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="form-group row">
                    <label for="txtLoc" class="col-sm-3 col-form-label col-form-label-lg">Shop Location:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtLoc" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="txtBrand" class="col-sm-3 col-form-label col-form-label-lg">City Name:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtCity" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="regDate" class="col-sm-3 col-form-label col-form-label-lg">Register Date:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="regDate" class="form-control form-control-lg" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="txtPswrd" class="col-sm-3 col-form-label col-form-label-lg">Password:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtPswrd" class="form-control form-control-lg" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="txtRePswrd" class="col-sm-3 col-form-label col-form-label-lg">Conform Password:</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="txtRePswrd" class="form-control form-control-lg" TextMode="Password" runat="server"></asp:TextBox>
                    </div>
                </div>


                <div class="well">
                    <asp:Button ID="btnSubmit" class="btn center-block" runat="server" Text="Submit:" Width="250px" Height="30px" OnClick="btnSubmit_Click"></asp:Button>
                </div>
            </div>
        </div>
    </form>

</asp:Content>



