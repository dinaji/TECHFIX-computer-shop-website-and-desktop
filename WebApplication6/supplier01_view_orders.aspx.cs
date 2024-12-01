using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication6
{
    public partial class supplier01_view_inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindInventory();
            }
        }

        private void BindInventory()
        {
            try
            {
                string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
                string query = "SELECT * FROM supplier1";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlDataAdapter da = new SqlDataAdapter(query, conn);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridViewInventory.DataSource = dt;
                    GridViewInventory.DataBind();
                }
            }
            catch (Exception ex)
            {
                // Log or display the full error
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}