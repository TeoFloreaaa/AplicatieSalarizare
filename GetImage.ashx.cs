//<%@ WebHandler Language = "C#" Class="GetImage" %>

using System;
using System.Configuration;
using System.Web;
using Oracle.ManagedDataAccess.Client;

public class GetImage : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        try
        {
            string idParam = context.Request.QueryString["id"];
            if (string.IsNullOrEmpty(idParam))
            {
                context.Response.StatusCode = 400;
                context.Response.Write("Lipsește parametrul id.");
                return;
            }

            int id = int.Parse(idParam);
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (var conn = new OracleConnection(connStr))
            using (var cmd = new OracleCommand("SELECT POZA FROM ANGAJATI WHERE ID_ANGAJAT = :id", conn))
            {
                cmd.Parameters.Add(":id", OracleDbType.Int32).Value = id;
                conn.Open();
                var result = cmd.ExecuteScalar();

                if (result != DBNull.Value && result != null)
                {
                    byte[] imageData = (byte[])result;

                    context.Response.Clear();
                    context.Response.ContentType = "image/jpeg";
                    context.Response.BinaryWrite(imageData);
                }
                else
                {
                    // Afișează un mesaj vizibil ca să confirmi că handlerul merge
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("Imaginea nu a fost găsită pentru id=" + id);
                }
            }
        }
        catch (Exception ex)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Eroare handler: " + ex.Message);
        }
    }

    public bool IsReusable => false;
}
