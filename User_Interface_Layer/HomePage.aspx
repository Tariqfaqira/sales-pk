<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="HomePage.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <div class="container-fluid" style="padding: 10px;">
        <div class="box">
            <img src="./images/service_img.jpg" class="img-responsive img-rounded" />
            <a href="#" onclick="SearchBy_Service()">
                <h3>Service</h3>
            </a>
        </div>

        <div class="box">
            <img src="./images/bata_img.png" class="img-responsive img-rounded" />
            <a href="#" onclick="SearchBy_Bata()">
                <h3>Bata</h3>
            </a>
        </div>
        <div class="box">
            <img src="./images/borjan_img.jpg" class="img-responsive img-rounded" />
            <a href="#" onclick="SearchBy_Borjan()">
                <h3>Borjan</h3>
            </a>
        </div>

        <div class="box">
            <img src="./images/metro_img.jpg" class="img-responsive img-rounded" />
            <a href="#" onclick="SearchBy_Metro()">
                <h3>Metro</h3>
            </a>
        </div>
    </div>
</asp:Content>