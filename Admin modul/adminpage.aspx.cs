using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnketaManager
{
    public partial class adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView_RowDataBound(Object sender, GridViewRowEventArgs e)
        {
            // Ako anketa ima barem jedan glas neće se prikazati 'Edit' button
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (((Label)e.Row.FindControl("broj_glasova_a")).Text != "0" 
                    || ((Label)e.Row.FindControl("broj_glasova_b")).Text != "0" 
                    || ((Label)e.Row.FindControl("broj_glasova_c")).Text != "0"
                    || ((Label)e.Row.FindControl("broj_glasova_d")).Text != "0")
                {
                    LinkButton cmdField = (LinkButton)e.Row.Cells[0].Controls[0];
                    cmdField.Visible = false;
                }
            }
            
        }
    }
}