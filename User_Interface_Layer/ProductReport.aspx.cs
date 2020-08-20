using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sales_pk.User_Interface_Layer
{
    public partial class ProductReport : System.Web.UI.Page
    {
        Boolean flag = false;
        SqlConnection con = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (UserLogin.getSession().Equals(""))
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
            {
                try
                {
                    errorMsg.Visible = false;
                    SqlCommand cmd = new SqlCommand("select * from Product where email='" + UserLogin.getSession() + "'", con);
                    SqlDataAdapter adpData = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    adpData.Fill(dt);
                    DataList2.DataSource = dt;
                    DataList2.DataBind();
                    con.Close();
                }
                catch (Exception)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('No data found regards given image id..');", true);
                }
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            try
            {
                var loggedin = UserLogin.getSession();
                SqlCommand cmd = new SqlCommand("select * from Product where img='" + txtImgId.Text + "'", con);
                SqlDataAdapter adpData = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                dt.Clear();
                adpData.Fill(dt);
                DataList2.DataSource = dt;
                DataList2.DataBind();
                flag = true;
                con.Close();                
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please enter the img id with extention(image1.jpg).');", true);
                errorMsg.Visible = true;
                errorMsg.Text = "No Item Found";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (txtImgId.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please enter the image id.');", true);
            }
            else
            {
                using (Entities db = new Entities())
                {
                    if (db.Products.Where(x => x.img == txtImgId.Text).Any())
                    {
                        insertDive.Visible = true;
                        btnEdit.Visible = false;
                        btnSave.Visible = true;
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('No image found with this id.');", true);
                    }

                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (txtPrice.Text.Equals("") || txtQuantity.Text.Equals("") || startDate.Text.Equals("") || endDate.Text.Equals(""))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please fill all the fields.');", true);
            }
            else
            {
                int quan = Convert.ToInt32(txtQuantity.Text);
                int pric = Convert.ToInt32(txtPrice.Text);
                var strt = Convert.ToDateTime(startDate.Text);
                var end = Convert.ToDateTime(endDate.Text);
                var today = DateTime.Now;
                if ((quan > 0) && (pric > 0) && (strt >= today) && (end > today) && (end > strt))
                {
                    using (Entities db = new Entities())
                    {
                        var image = txtImgId.Text;
                        Product product = db.Products.Where(x => x.img == image).FirstOrDefault();
                        if (product != null)
                        {
                            product.size = sizeDdl.SelectedItem.Text;
                            product.price = pric;
                            product.quantity = quan;
                            product.start_date = strt;
                            product.end_date = end;
                            product.img = img.Text;
                            product.gender = genderDdl.SelectedItem.Text;

                            db.SaveChanges();

                            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Data Successfully updated.');", true);
                            insertDive.Visible = false;
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('This image already uploaded. Please rename or or make sure about it.');", true);
                        }
                    }
                }
                else
                {
                    if (quan > 0)
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtImgId != null)
            {
                using (Entities db = new Entities()) {
                    var product = db.Products.Where(x => x.img == txtImgId.Text).FirstOrDefault();
                    if (product != null)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Invalid image; id not found');", true);
                    }
                    else
                    {
                        db.Products.Remove(product);
                        db.SaveChanges();
                    }
              }
            }
        }
    }
}