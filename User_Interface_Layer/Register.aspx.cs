using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Entity.Validation;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace Sales_pk.User_Interface_Layer
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var localDateTime = DateTime.Now.ToString("yyyy-MM-dd").Replace(' ', 'T');
            regDate.Text = localDateTime;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Equals("") || txtPswrd.Text.Equals("") || txtRePswrd.Text.Equals("") || txtBrand.Text.Equals("") || txtLoc.Text.Equals("") || txtCity.Text.Equals(""))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Please fill all the fields.');", true);
            }
            {
                if (!txtPswrd.Text.Equals(txtRePswrd.Text))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('password are not matching..!');", true);
                }
                else
                {
                    User user = new User();
                    using (Entities db = new Entities())
                    {
                        if (db.Users.Where(x => x.email == txtEmail.Text).Any())
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('This email is already registered.');", true);
                        }
                        else
                        {
                            user.email = txtEmail.Text;
                            user.password = txtPswrd.Text;
                            user.brand = txtBrand.Text;
                            user.location = txtLoc.Text;
                            user.city = txtCity.Text;
                            user.date_register = Convert.ToDateTime(regDate.Text);

                            db.Users.Add(user);
                            db.SaveChanges();
                        }
                    }
                }
            }
        }
    }
}