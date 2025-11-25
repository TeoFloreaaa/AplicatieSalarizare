using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Web;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
//using CrystalDecisions.CrystalReports.Engine;

namespace TPW_proiect
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        //Declaratii
        OracleConnection cn;
        OracleDataAdapter da;
        DataSet ds;
        String strSQL;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                cn = new OracleConnection("Data Source=XE;Persist Security Info=True;User ID=student;Password=student;Unicode=True");
                strSQL = "SELECT * FROM ANGAJATI";
                da = new OracleDataAdapter(strSQL, cn);
                ds = new DataSet();
                da.Fill(ds, "tabela");
                GridView1.DataSource = ds.Tables["tabela"].DefaultView;
                GridView1.DataBind();
                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("CrystalReport2.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["tabela"]);
                CrystalReportViewer1.ReportSource = raport;
            }
            catch (Exception ex)
            {
                Label1.Text = "Eroare conectare baza de date..." + ex.ToString();
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}