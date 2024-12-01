using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace WebApplication6
{
    public partial class customerquotation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

         

        protected void btnAddQuotation_Click1(object sender, EventArgs e)
        {
            // Retrieve input values from textboxes
            int supplierID = Convert.ToInt32(txtSupplierID.Text);
            DateTime quotationDate = Convert.ToDateTime(txtQuotationDate.Text);
            decimal totalAmount = Convert.ToDecimal(txtTotalAmount.Text);
            string status = txtStatus.Text;

            // Define your connection string (ensure your web.config has the correct connection string)
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            // SQL query to insert the quotation into the database
            string query = "INSERT INTO Quotation (SupplierID, QuotationDate, TotalAmount, Status) " +
                           "VALUES (@SupplierID, @QuotationDate, @TotalAmount, @Status)";

            // Execute the query
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@SupplierID", supplierID);
                cmd.Parameters.AddWithValue("@QuotationDate", quotationDate);
                cmd.Parameters.AddWithValue("@TotalAmount", totalAmount);
                cmd.Parameters.AddWithValue("@Status", status);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            // Clear the form and show a success message
            txtSupplierID.Text = "";
            txtQuotationDate.Text = "";
            txtTotalAmount.Text = "";
            txtStatus.Text = "";
            Response.Write("<script>alert('Quotation added successfully!');</script>");
        }
    }
    }
