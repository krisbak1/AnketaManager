using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnketaManager
{
    public partial class anketaCreate : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Event za kreiranje nove ankete
        protected void AnketaSubmit(object sender, EventArgs e)
        {
            try {
                SqlConnection connection = new SqlConnection(connectionString);
                if (connection.State == ConnectionState.Closed) {
                    connection.Open();
                }

                SqlCommand sqlQuery = new SqlCommand("INSERT INTO anketa_table(pitanje," +
                    "date_pocetak, date_kraj, odgovor_a, odgovor_b, odgovor_c, odgovor_d)" +
                    "VALUES(@pitanje," +
                    "@date_pocetak, @date_kraj, @odgovor_a, @odgovor_b, @odgovor_c, @odgovor_d);", connection);

                sqlQuery.Parameters.AddWithValue("@pitanje", pitanje.Text.Trim());
                sqlQuery.Parameters.AddWithValue("@date_pocetak", date_pocetak.Text.Trim());
                sqlQuery.Parameters.AddWithValue("@date_kraj", date_kraj.Text.Trim());
                sqlQuery.Parameters.AddWithValue("@odgovor_a", odgovor_a.Text.Trim());
                sqlQuery.Parameters.AddWithValue("@odgovor_b", odgovor_b.Text.Trim());
                sqlQuery.Parameters.AddWithValue("@odgovor_c", odgovor_c.Text.Trim());
                sqlQuery.Parameters.AddWithValue("@odgovor_d", odgovor_d.Text.Trim());

                sqlQuery.ExecuteNonQuery();
                connection.Close();
                Response.Redirect("/adminpage.aspx");

            } catch (Exception ex){
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}