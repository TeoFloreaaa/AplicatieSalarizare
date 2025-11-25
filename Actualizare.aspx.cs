using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPW_proiect
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UpdateSearchCommand();
            }
            else
            {
                GridView2.DataBind();
            }
        }

        protected void FormView1_DataBound(object sender, EventArgs e)
        {
            if (FormView1.CurrentMode == FormViewMode.ReadOnly)
            {
                Image img = (Image)FormView1.FindControl("Image1");
                if (img != null)
                {
                    object rawData = DataBinder.Eval(FormView1.DataItem, "POZA");

                    if (rawData != DBNull.Value && rawData != null)
                    {
                        byte[] imageData = (byte[])rawData;
                        string base64 = Convert.ToBase64String(imageData);
                        img.ImageUrl = "data:image/jpeg;base64," + base64;
                    }
                    else
                    {
                        img.ImageUrl = "~/Images/no_image.png";
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateSearchCommand();
            GridView1.DataBind(); 
            GridView2.DataBind();
        }

        private void UpdateSearchCommand()
        {
            string searchField = ddlCautare.SelectedValue;
            string searchValue = TextBox1.Text.Trim();
           
            SqlDataSource1.SelectCommand = $"SELECT * FROM \"ANGAJATI\" WHERE (\"{searchField}\" = :NUME)";
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("NUME", searchValue);
        }

        protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
            
            object pozaParam = e.Command.Parameters["POZA"].Value;
           
            if (pozaParam == null || pozaParam == DBNull.Value)
            {
                e.Command.Parameters.RemoveAt("POZA");
                e.Command.CommandText = e.Command.CommandText.Replace(", \"POZA\" = :POZA", "");
            }
        }


    }
}