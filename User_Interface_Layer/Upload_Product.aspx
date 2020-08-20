<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/User_Interface_Layer/MasterPage.Master" CodeBehind="Upload_Product.aspx.cs" Inherits="Sales_pk.User_Interface_Layer.Upload_Product" %>


<asp:Content ID="Upload_Product" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="HomePage_StyleSheet.css" />
    <script type="text/javascript" src="JavaScript.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <form runat="server" style="background-color: #E1EFDA;">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3>Upload on Sales.pk</h3>
            </div>
            <div class="panel-body bg-success">
                <div class="form-group row" style="margin-left:4px">
                    <asp:FileUpload ID="imgFile" runat="server" onchange="readURL(this);"/>
                    <div class="col-sm-4" style="margin-top:5px">
                        <img id="imgName" src="#" alt="your image" />
                    </div>
                </div>

                <div class="form-group row">
                    <label for="txtSize" class="col-sm-3 col-form-label col-form-label-lg">Product Gender:</label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="genderDdl" runat="server" ForeColor="Black">
                            <asp:ListItem>men</asp:ListItem>
                            <asp:ListItem>women</asp:ListItem>
                        </asp:DropDownList>
                        <%--<select class="dropdown" id="dropDown_1">   
                            <option selected="selected"> Men</option>
                            <option>Women</option>
                        </select>--%>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="txtSize" class="col-sm-3 col-form-label col-form-label-lg">Product Size:</label>
                    <div class="col-sm-6">
                        <asp:DropDownList ID="sizeDdl" runat="server" ForeColor="Black">
                            <asp:ListItem>small</asp:ListItem>
                            <asp:ListItem>medium</asp:ListItem>
                            <asp:ListItem>large</asp:ListItem>
                        </asp:DropDownList>                   
                        <%--<select class="dropdown has-error" id="dropDown_2">
                            <option selected="selected"> Small</option>
                            <option>Medium</option>
                            <option>Large</option>
                        </select>--%>
                    </div>                    
                </div>




                <div class="form-group row">
                    <label for="txtQuantity" class="col-sm-3 col-form-label col-form-label-lg">Product Quantity:</label>
                    <div class="col-sm-6">
                        <%--<input type="number" id="txtQuantity" class="form-control form-control-lg" />--%>
                        <asp:TextBox ID="txtQuantity" TextMode="Number" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <small class="error_quantity text-danger" style="display: none">
                               Invalid Quantity! must be grater than 0.
                        </small>      
                    </div>
                </div>
                <div class="form-group row">
                    <label for="txtPrice" class="col-sm-3 col-form-label col-form-label-lg">Product Price:</label>
                    <div class="col-sm-6">
                        <%--<input type="number" id="txtPrice" class="form-control form-control-lg" />--%>
                        <asp:TextBox ID="txtPrice" TextMode="Number" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <small class="error_price text-danger" style="display: none">
                               Invalid Price! must be grater than 0.
                        </small>      
                    </div>
                </div>
                <div class="form-group row">
                    <label for="startDate" class="col-sm-3 col-form-label col-form-label-lg">Start Date:</label>
                    <div class="col-sm-6">
                        <%--<input type="date" id="startDate" class="form-control form-control-lg"/>--%>
                        <asp:TextBox ID="startDate" TextMode="Date" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <small class="error_strtDate text-danger" style="display: none">
                               Invalid Date! must be grater than current date.
                        </small>      
                    </div>
                </div>
                <div class="form-group row">
                    <label for="endDate" class="col-sm-3 col-form-label col-form-label-lg">End Date:</label>
                    <div class="col-sm-6">
                        <%--<input type="date" id="endDate" class="form-control form-control-lg"/>--%>
                        <asp:TextBox ID="endDate" TextMode="Date" class="form-control form-control-lg" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <small class="error_endDate text-danger" style="display: none">
                               Invalid Date! must be grater than start date or current date.
                        </small>      
                    </div>
                </div>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <div class="well">
                    <%--<input type="button" class="center-block" id="SubmitProduct"  value="Insert Product" OnClick="check_user();" />--%>
                    <asp:Button ID="btnSave" class="center-block" runat="server" Text="Save Item" OnClick="btnSave_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>


