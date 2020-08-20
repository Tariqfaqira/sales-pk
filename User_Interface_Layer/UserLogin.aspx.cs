using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sales_pk.User_Interface_Layer
{
    public partial class UserLogin : System.Web.UI.Page
    {
        private static String session = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!session.Equals(""))
            {
                Response.Redirect("HomePage.aspx");
            }
            //try
            //{
            //    if (Session["Loggedin"].ToString() != "")
            //    {
            //        Response.Redirect("HomePage.aspx");
            //    }
            //}
            //catch (Exception)
            //{
            //    Session["Loggedin"] = "";
            //}
        }


        protected void loginBtn_Click1(object sender, EventArgs e)
        {
            using (Entities db = new Entities())
            {
                if (db.Users.Where(x => x.email == txtEmailLgn.Text && x.password == txtPswrdLgn.Text).Any())
                {
                    //Session["Loggedin"] = txtEmailLgn.Text;
                    session = txtEmailLgn.Text;
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    errorBox.Text = "Invalid email or incorrect password";
                }
            }
        }

        public static String getSession()
        {
            return session;
        }

        public static void setSession(String str){
            session = str;
        }
    }
}