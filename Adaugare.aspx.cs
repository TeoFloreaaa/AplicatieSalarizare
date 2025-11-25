using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPW_proiect
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload fileUpload = (FileUpload)FormView1.FindControl("FileUpload1");

            if (fileUpload != null && fileUpload.HasFile)
            {
                byte[] fileBytes = fileUpload.FileBytes;
                e.Values["POZA"] = fileBytes;
            }
            else
            {
                e.Values["POZA"] = DBNull.Value;
            }
        }


        protected void SqlDataSource2_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            if (e.Command.Parameters["POZA"] != null)
            {  
                DbParameter p = e.Command.Parameters["POZA"];
                p.DbType = DbType.Binary;
            }
        }
    }
}