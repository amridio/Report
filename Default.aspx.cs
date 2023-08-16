using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Report
{
    public partial class Default : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        SqlConnection con;
        SqlCommand cmd = new SqlCommand();
        SqlParameter sp1 = new SqlParameter();
        SqlParameter sp2 = new SqlParameter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            con = new SqlConnection("Server=localhost\\SQLEXPRESS;Database=trading;Trusted_Connection=True;");
            //cmd.Parameters.Add("@FromDate", SqlDbType.Date).Value = TextBox1.Text;
            //cmd.Parameters.Add("@ToDate", SqlDbType.Date).Value = TextBox2.Text;
            cmd = new SqlCommand("GetTradeinfoByDate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //con.Open();
            //cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@FromDate", SqlDbType.Date).Value = TextBox1.Text;
            da.SelectCommand.Parameters.Add("@ToDate", SqlDbType.Date).Value = TextBox2.Text;
            da.Fill(dt);
            con.Close();

            ReportViewer1.LocalReport.DataSources.Clear();
            ReportDataSource rds = new ReportDataSource("DataSet1",dt);
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("Tradeinfo.rdlc");
            ReportParameterCollection rpc = new ReportParameterCollection();
            rpc.Add(new ReportParameter("FromDateParam", TextBox1.Text));
            rpc.Add(new ReportParameter("ToDateParam", TextBox2.Text));
            ReportViewer1.LocalReport.SetParameters(rpc);
            ReportViewer1.LocalReport.DataSources.Add(rds);
            ReportViewer1.LocalReport.Refresh();
            
        }
    }
}