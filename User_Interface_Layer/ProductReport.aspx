<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="ProductReport.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.ProductReport" %>

<asp:Content ID="AddProductTo_Page" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <form runat="server" style="background-color: #E1EFDA">
        <header class="page-header" style="margin-top: 0px; padding: 25px">


            <asp:Label ID="Label4" runat="server" Style="font-weight: bold; font-size: 16px" Text="Enter Image id:"></asp:Label>
            <asp:TextBox ID="txtImgId" runat="server" ForeColor="black"></asp:TextBox>
            <asp:Button ID="Search" runat="server" ForeColor="black" Text="Search" OnClick="Search_Click" />

            <asp:Button ID="btnDelete" runat="server" ForeColor="Black" Style="float: right; margin-right: 100px; margin-left: 5px" Text="Delete Record" OnClick="btnDelete_Click" />
            <asp:Button ID="btnEdit" runat="server" ForeColor="Black" Style="float: right" Text="Update Record" OnClick="btnEdit_Click" />
            <asp:Button ID="btnSave" runat="server" ForeColor="Black" Style="float: right" Visible="false" Text="Save record" OnClick="btnSave_Click" />

            <div class="table-responsive" runat="server" style="margin-top: 10px;">
                <asp:Table runat="server" class="table-responsive" ID="insertDive" Visible="false" BorderStyle="Ridge">
                    <asp:TableHeaderRow BackColor="White" ForeColor="Black">
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">Imag</asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">Size</asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">Price</asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">Quantity</asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">Gender</asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">Start</asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                        <asp:Label runat="server">End</asp:Label>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:TextBox ID="img" ForeColor="black" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="sizeDdl" runat="server" ForeColor="Black">
                                <asp:ListItem>small</asp:ListItem>
                                <asp:ListItem>medium</asp:ListItem>
                                <asp:ListItem>large</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtPrice" ForeColor="black" TextMode="Number" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtQuantity" ForeColor="black" TextMode="Number" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="genderDdl" runat="server" ForeColor="Black">
                                <asp:ListItem>men</asp:ListItem>
                                <asp:ListItem>women</asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="startDate" ForeColor="black" TextMode="Date" runat="server"></asp:TextBox>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="endDate" ForeColor="black" TextMode="Date" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>

        </header>
        <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="230px">
            <ItemTemplate>
                <br />
                <div class="box" style="margin: 13px; min-height: 290px; min-width: 200px; max-height: 290px; max-width: 200px; padding: 3px;">
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
                                <label style="font-size: 11px; float: left">Img id:</label><br />
                                <label style="font-size: 11px; float: left">Size:</label><br />
                                <label style="font-size: 11px; float: left;">Price:</label><br />
                                <label style="font-size: 11px; float: left">Quantity:</label><br />
                                <label style="font-size: 11px; float: left">Gender:</label><br />
                                <label style="font-size: 11px; float: left">Start:</label><br />
                                <label style="font-size: 11px; float: left">End:</label><br />

                            </div>
                            <div style="float: right; padding-right: 5px">
                                <asp:Label ID="Label8" runat="server" Style="font-size: 12px;" Text='<%# Eval("img") %>'></asp:Label><br />
                                <asp:Label ID="Label1" runat="server" Style="font-size: 12px;" Text='<%# Eval("size") %>'></asp:Label><br />
                                <asp:Label ID="Label2" runat="server" Style="font-size: 12px;" Text='<%# Eval("price") %>'></asp:Label><br />
                                <asp:Label ID="Label3" runat="server" Style="font-size: 12px;" Text='<%# Eval("quantity") %>'></asp:Label><br />
                                <asp:Label ID="Label5" runat="server" Style="font-size: 12px;" Text='<%# Eval("gender") %>'></asp:Label><br />
                                <asp:Label ID="Label6" runat="server" Style="font-size: 12px;" Text='<%# Eval("start_date") %>'></asp:Label><br />
                                <asp:Label ID="Label7" runat="server" Style="font-size: 12px;" Text='<%# Eval("end_date") %>'></asp:Label><br />

                            </div>
                        </tbody>
                    </table>
                </div>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="errorMsg" runat="server" Visible="false" ForeColor="Red"></asp:Label>
    </form>
</asp:Content>




