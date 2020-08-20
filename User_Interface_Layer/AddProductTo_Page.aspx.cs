using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sales_pk.User_Interface_Layer
{
    public partial class AddProductTo_Page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
        private static String searhBy = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            var today = DateTime.Now;
            SqlCommand cmd;
            if (searhBy == "all" || searhBy == "")
            {
                cmd = new SqlCommand("select * from Product Where start_date >='" + today + "'", con);
                loadData(cmd);
            }
            else if (searhBy == "men")
            {
                cmd = new SqlCommand("select * from Product WHERE (gender='men') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "women")
            {
                cmd = new SqlCommand("select * from Product WHERE (gender='women') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "<1000")
            {
                cmd = new SqlCommand("select * from Product WHERE (price BETWEEN 1 AND 1000) AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "1000-2000")
            {
                cmd = new SqlCommand("select * from Product WHERE (price BETWEEN 1 AND 1000) AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "2000-3000")
            {
                cmd = new SqlCommand("select * from Product WHERE (price BETWEEN 1 AND 1000) AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == ">3000")
            {
                cmd = new SqlCommand("select * from Product WHERE (price > 3000) AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "small")
            {
                cmd = new SqlCommand("select * from Product WHERE (size='small') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "medium")
            {
                cmd = new SqlCommand("select * from Product WHERE (size='medium') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "large")
            {
                cmd = new SqlCommand("select * from Product WHERE (size='large') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "bata")
            {
                cmd = new SqlCommand("select * from Product WHERE (brand='bata') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "service")
            {
                cmd = new SqlCommand("select * from Product WHERE (brand='service') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "borjan")
            {
                cmd = new SqlCommand("select * from Product WHERE (brand='borjan') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else if (searhBy == "metro")
            {
                cmd = new SqlCommand("select * from Product WHERE (brand='metro') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }
            else
            {
                cmd = new SqlCommand("select * from Product WHERE (city='" + searhBy + "') AND (start_date>='" + today + "')", con);
                loadData(cmd);
            }

            
        }

        void loadData(SqlCommand cmd)
        {
            SqlDataAdapter adpData = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adpData.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }
        [System.Web.Services.WebMethod]
        public static bool setSearchType(string search)
        {
            searhBy = search;
            return true;
        }
    }
}