<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="AddProductTo_Page.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.AddProductTo_Page" %>

<asp:Content ID="AddProductTo_Page" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <form runat="server" style="background-color: #E1EFDA">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="230px">
            <ItemTemplate>
                <br />
                <div class="box" style="margin: 13px; min-height: 320px; min-width: 200px; max-height: 320px; max-width: 200px; padding: 3px;">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <div class="parent">
                                    <asp:Image ID="Image1" class="img-responsive img-thumbnail" runat="server" ImageUrl='<%# Eval("img") %>' />
                                </div>
                            </tr>
                        </thead>
                        <tbody class="table-primary">
                            <div style="float: left; padding-left: 5px">
                                <label style="font-size: 11px; float: left">Size:</label><br />
                                <label style="font-size: 11px; float: left;">Price:</label><br />
                                <label style="font-size: 11px; float: left">Quantity:</label><br />
                                <label style="font-size: 11px; float: left">Brand:</label><br />
                                <label style="font-size: 11px; float: left">Location:</label><br />
                                <label style="font-size: 11px; float: left">Gender:</label><br />
                                <label style="font-size: 11px; float: left">Start:</label><br />
                                <label style="font-size: 11px; float: left">End:</label><br />
                            </div>
                            <div style="float: right; padding-right: 5px">
                                <asp:Label ID="Label1" runat="server" Style="font-size: 12px;" Text='<%# Eval("size") %>'></asp:Label><br />
                                <asp:Label ID="Label2" runat="server" Style="font-size: 12px;" Text='<%# Eval("price") %>'></asp:Label><br />
                                <asp:Label ID="Label3" runat="server" Style="font-size: 12px;" Text='<%# Eval("quantity") %>'></asp:Label><br />
                                <asp:Label ID="Label5" runat="server" Style="font-size: 12px;" Text='<%# Eval("gender") %>'></asp:Label><br />
                                <asp:Label ID="Label8" runat="server" Style="font-size: 12px;" Text='<%# Eval("brand") %>'></asp:Label><br />
                                <asp:Label ID="Label9" runat="server" Style="font-size: 12px;" Text='<%# Eval("location") %>'></asp:Label><br />
                                <asp:Label ID="Label6" runat="server" Style="font-size: 12px;" Text='<%# Eval("start_date") %>'></asp:Label><br />
                                <asp:Label ID="Label7" runat="server" Style="font-size: 12px;" Text='<%# Eval("end_date") %>'></asp:Label><br />
                            </div>

                        </tbody>
                    </table>
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
