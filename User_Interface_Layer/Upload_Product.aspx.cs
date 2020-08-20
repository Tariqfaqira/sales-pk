using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sales_pk.User_Interface_Layer
{
    public partial class Upload_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserLogin.getSession().Equals(""))
            {
                Response.Redirect("UserLogin.aspx");
            }
            //try
            //{
            //    if (Session["Loggedin"].ToString() == "")
            //    {
            //        Response.Redirect("UserLogin.aspx");
            //    }
            //}
            //catch (Exception)
            //{
            //    Session["Loggedin"] = "";
            //}
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            


            if (txtPrice.Text.Equals("") || txtQuantity.Text.Equals("") || startDate.Text.Equals("") || endDate.Text.Equals("") || imgFile.Equals(""))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please fill all the fields.');", true);
            }
            else
            {
                string path = Path.GetFileName(imgFile.PostedFile.FileName);
                imgFile.SaveAs(@"C:\Users\user\source\repos\Sales_pk\Sales_pk\User_Interface_Layer\Product_Images\" + path);
                int quan = Convert.ToInt32(txtQuantity.Text);
                int pric = Convert.ToInt32(txtPrice.Text);
                var strt = Convert.ToDateTime(startDate.Text);
                var end = Convert.ToDateTime(endDate.Text);
                var today = DateTime.Now;
                if ((quan > 0) && (pric > 0) && (strt >= today) && (end > today) && (end > strt))
                {
                    Product product = new Product();
                    using (Entities db = new Entities())
                    {
                        var loggedin = UserLogin.getSession();
                        User user = db.Users.Where(x => x.email == loggedin).FirstOrDefault();

                        var imagPath = "Product_Images/" + path;
                        var pic = db.Products.Where(x => x.img == imagPath).Any();
                        if (pic == false)
                        {
                            product.email = user.email;
                            product.size = sizeDdl.SelectedItem.Text;
                            product.price = pric;
                            product.quantity = quan;
                            product.start_date = strt;
                            product.end_date = end;
                            product.img = "Product_Images/" + path;
                            product.gender = genderDdl.SelectedItem.Text;
                            product.location = user.location;
                            product.city = user.city;
                            product.brand = user.brand;

                            db.Products.Add(product);
                            db.SaveChanges();

                            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Data Successfully added.');", true);
                            txtPrice.Text = "";
                            txtQuantity.Text = "";
                            startDate.Text = "";
                            endDate.Text = "";
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('This image already uploaded. Please rename or or make sure about it.');", true);
                        }
                    }
                }
                else
                {
                    if(quan > 0)
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid Quantity.');", true);
                    if ((pric > 0))
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid Price.');", true);
                    if (strt >= today)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid Start. Must after or today');", true);
                    }
                    if (end >= today)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid end. Must after today or start date');", true);
                    }
                }
            }
        }



        //[System.Web.Services.WebMethod]
        //public static bool InsertUser(String size, String price, String quantity, String startDate, String endDate, String img, String gender)
        //{
        //    Product product = new Product();
        //    return true;
        //    using (Entities db = new Entities())
        //    {
        //        try
        //        {
        //            var user = db.Users.Where(x => x.email == UserLogin.getSession()).FirstOrDefault();
        //            string path = Path.GetFileName(img.PostedFile.FileName);
        //            img.SaveAs(@"C:\Users\user\source\repos\Sales_pk\Sales_pk\User_Interface_Layer\Product_Images\" + path);

        //            product.email = user.email;
        //            product.size = size;
        //            product.price = Convert.ToInt32(price);
        //            product.quantity = Convert.ToInt32(quantity);
        //            product.start_date = startDate;
        //            product.end_date = Convert.ToDateTime(endDate);
        //            product.img = "Product_Images/" + path;
        //            product.gender = gender;
        //            product.location = user.location;
        //            product.city = user.city;
        //            product.brand = user.brand;

        //            db.Products.Add(product);
        //            db.SaveChanges();
        //            return true;
        //        }
        //        catch (Exception)
        //        {
        //            return false;
        //        }
        //    }
        //    }
    }
}