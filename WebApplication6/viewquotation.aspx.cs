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
    public partial class viewquotation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindQuotations();
            }
        }

        private void BindQuotations()
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
            string query = "SELECT * FROM Quotation";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gridViewQuotations.DataSource = dt;
                gridViewQuotations.DataBind();
            }
        }
    }
}