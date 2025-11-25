using Oracle.ManagedDataAccess.Client;
using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Reflection.Emit;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

namespace TPW_proiect
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string parolaIntrodusa = TextBox1.Text.Trim();
            string parolaCorecta = GetParolaFromDatabase();

            // Debugging
            LabelEroare.Text = $"Introdusa: '{parolaIntrodusa}' | Corecta: '{parolaCorecta}'";
            LabelEroare.Visible = true;

            if (parolaIntrodusa == parolaCorecta)
            {
                Session["parola"] = parolaIntrodusa;
                Server.Transfer("Procente.aspx");
            }
            else
            {
                LabelEroare.Text = "PAROLA INCORECTA!";
            }
        }

        private string GetParolaFromDatabase()
        {
            string connectionString = "User Id=student;Password=student;Data Source=localhost:1521/XE;";
            string query = "SELECT PAROLA FROM PROCENTE WHERE PAROLA = 'parola'";

            try
            {
                using (OracleConnection con = new OracleConnection(connectionString))
                {
                    con.Open();

                    using (OracleCommand cmd = new OracleCommand(query, con))
                    {

                        object result = cmd.ExecuteScalar();

                        if (result == null || result == DBNull.Value)
                        {
                            LabelEroare.Text = "Nu s-a găsit utilizatorul sau parola!";
                            return string.Empty;
                        }

                        string parola = result.ToString().Trim();
                        return parola;
                    }
                }
            }
            catch (Exception ex)
            {
                // Prinde orice eroare și o afișează pe pagină
                LabelEroare.Text = "Eroare la interogare: " + ex.Message;
                return string.Empty;
            }
        }

    }
}