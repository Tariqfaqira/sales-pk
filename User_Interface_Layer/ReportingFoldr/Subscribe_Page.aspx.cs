using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sales_pk.User_Interface_Layer.ReportingFoldr
{
    public partial class Subscribe_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void email_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Product where email='" + TextBox1.Text + "'", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Product_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void brand_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Product where brand='" + TextBox1.Text + "'", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Product_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void size_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Product where size='" + TextBox1.Text + "'", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Product_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void price_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Product where price='" + TextBox1.Text + "'", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Product_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void date_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Subscribe where date= between'" + startdate.Text + "' AND '" + enddate.Text + "'", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Product_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Product_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Product", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Product_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Subscribe_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Subscribe", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Subscribe_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Login", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Login_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet3", dt));
            ReportViewer1.LocalReport.Refresh();
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
            SqlDataAdapter da = new SqlDataAdapter("Select * from Signup", conn);

            DataTable dt = new DataTable("Table1");
            da.Fill(dt);
            ReportViewer1.ProcessingMode = ProcessingMode.Local;
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("SignUp_Report.rdlc");
            ReportViewer1.LocalReport.DataSources.Clear();
            ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet4", dt));
            ReportViewer1.LocalReport.Refresh();
        }





        //private void GetDataSubs()
        //{
        //    SqlConnection conn1 = new SqlConnection(@"Data Source=USER-PC; Initial Catalog=Sales.pk; Integrated Security=True");
        //    SqlDataAdapter da1 = new SqlDataAdapter("Select * from Subscribe", conn1);

        //    DataTable dt1 = new DataTable("Table2");
        //    da1.Fill(dt1);
        //    ReportViewer2.ProcessingMode = ProcessingMode.Local;
        //    ReportViewer2.LocalReport.ReportPath = Server.MapPath("Subscribe_Page.rdlc");
        //    ReportViewer2.LocalReport.DataSources.Clear();
        //    ReportViewer2.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt1));
        //    ReportViewer2.LocalReport.Refresh();
        //}
    }
}