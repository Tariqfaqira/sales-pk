
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        var fileName;

        reader.onload = function (e) {
            var img = $('#imgName')
                .attr('src', e.target.result)
                .width(120)
                .height(200);

            fileName = document.getElementById('imgFile').value;
        };
        reader.readAsDataURL(input.files[0]);
    }
}

function check_user() {
    alert("ghusa");
    var inputGender = "men";
    var inputSize = "small";
    var inputPrice = "12";
    var inputQuantity = "1";
    var inputStrtDate = "2019-03-09";
    var inputEndDate = "2019-03-09";
    //$('#<%=lblName.ClientID%>')
    var inputImg = "123";

    //var inputGender = $("#dropDown_1").val();
    //var inputSize = $("#dropDown_2").val();
    //var inputPrice = $("#txtPrice").val();
    //var inputQuantity = $("#txtQuantity").val();
    //var inputStrtDate = $("#startDate").val();
    //var inputEndDate = $("#endDate").val();
    ////$('#<%=lblName.ClientID%>')
    //var inputImg = $('#<%=imgFile.ClientID%>').val();

    $.ajax({
        type: "POST",
        url: "Upload_Product.aspx/InsertUser",
        data: "{size: '" + inputSize + "', price: '" + inputPrice + "', quantity: '" + inputQuantity + "', startDate: '" + inputStrtDate + "', endDate: '" +
        inputEndDate + "', img: '" + inputImg + "', gender: '" + inputGender + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            if (response.d) {
                window.location.href = "AddProductTo_Page.aspx";
            } else {
                alert("Page loadding error");
            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });


    var flag = true;
    if (inputPrice <= 0) {
        $(".error_price").css("display", "block");
        flag = false;
    } else {
        $(".error_price").css("display", "none");
    }
    if (inputQuantity <= 0) {
        flag = false;
        $(".error_quantity").css("display", "block");
    } else {
        $(".error_quantity").css("display", "none");
    }
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();
    today = yyyy + '-' + mm + '-' + dd;

    if (inputStrtDate < today) {
        $(".error_strtDate").css("display", "block");
        flag = false;
    } else {
        $(".error_strtDate").css("display", "none");
    }
    if (inputEndDate < inputStrtDate) {
        $(".error_endDate").css("display", "block");
        flag = false;
    } else {
        $(".error_endDate").css("display", "none");
    }

    if (inputEndtDate < today) {
        $(".error_endDate").css("display", "block");
        flag = false;
    } else {
        $(".error_endDate").css("display", "none");
    }
    if (inputImg == null) {
        $(".error_img").css("display", "block");
        flag = false;
    } else {
        $(".error_img").css("display", "none");
    }



}


function SearchBy_All() {
    var searchType = "all";
    AjaxFunction(searchType);
}
function SearchBy_Men() {
    var searchType = "men";
    AjaxFunction(searchType);
}

function SearchBy_Women() {
    var searchType = "women";
    AjaxFunction(searchType);
}
function SearchBy_lowPrice() {
    var searchType = "<1000";
    AjaxFunction(searchType);
}
function SearchBy_medPrice() {
    var searchType = "1000-2000";
    AjaxFunction(searchType);
}
function SearchBy_higPrice() {
    var searchType = "2000-3000";
    AjaxFunction(searchType);
}
function SearchBy_extraHigPrice() {
    var searchType = ">3000";
    AjaxFunction(searchType);
}

function SearchBy_smallSize() {
    var searchType = "small";
    AjaxFunction(searchType);
}
function SearchBy_medSize() {
    var searchType = "medium";
    AjaxFunction(searchType);
}
function SearchBy_largSize() {
    var searchType = "large";
    AjaxFunction(searchType);
}
function SearchBy_Bata() {
    var searchType = "bata";
    AjaxFunction(searchType);
}
function SearchBy_Service() {
    var searchType = "service";
    AjaxFunction(searchType);
}
function SearchBy_Borjan() {
    var searchType = "borjan";
    AjaxFunction(searchType);
}
function SearchBy_Metro() {
    var searchType = "metro";
    AjaxFunction(searchType);
}

function SearchBy_City() {
    var searchType = prompt("Please enter your name", "Harry Potter");

    if (searchType == null || searchType == "") {
        txt = "User cancelled the prompt.";
    } else {
        AjaxFunction(searchType);
    }
}

function AjaxFunction(searchType) {
    $.ajax({
        type: "POST",
        url: "AddProductTo_Page.aspx/setSearchType",
        data: "{search: '" + searchType + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (response) {
            if (response.d) {
                window.location.href = "AddProductTo_Page.aspx";
            } else {
                alert("Page loadding error");
            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}








