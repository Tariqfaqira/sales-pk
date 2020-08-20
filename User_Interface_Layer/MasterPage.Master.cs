using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sales_pk.User_Interface_Layer
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        AddProductTo_Page adtp = new AddProductTo_Page();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            { 
                //logoutBtn.Visible = false;
                //loginBtn.Visible = true;
            }
        }
        //public Boolean ErrorMessage
        //{
        //    get
        //    {
        //        return true;
        //    }
        //    set
        //    {
        //        loginBtn.Visible = value;
        //        logoutBtn.Visible = !value;
        //    }
        //}

        protected void logoutSession_Click(object sender, EventArgs e)
        {
            UserLogin.setSession("");
            Response.Redirect("HomePage.aspx");
        }

        protected void SubscribeButton_Click(object sender, EventArgs e)
        {
            Subscribe sbc = new Subscribe();
            using (Entities db = new Entities())
            {
                sbc.email = txtSubscribe.Value;
                var localDate = DateTime.Now.ToString("yyyy-MM-dd").Replace(' ', 'T');
                sbc.date = localDate;
                sbc.interest = "";

                db.Subscribes.Add(sbc);
                db.SaveChanges();
                txtSubscribe.Value = "abc";
            }
        }  
    }
}