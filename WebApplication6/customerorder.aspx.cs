using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class customerorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            // Define the connection string (make sure to update it with your actual connection details)
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;





            // Define the SQL query to insert the order details
            string query = "INSERT INTO Orders (SupplierID, OrderDate, TotalAmount, Status) VALUES (@SupplierID, @OrderDate, @TotalAmount, @Status)";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);

                // Add parameters to the SQL quer
                cmd.Parameters.AddWithValue("@SupplierID", txtSupplierID.Text);
                cmd.Parameters.AddWithValue("@OrderDate", Convert.ToDateTime(txtOrderDate.Text));
                cmd.Parameters.AddWithValue("@TotalAmount", Convert.ToDecimal(txtTotalAmount.Text));
                cmd.Parameters.AddWithValue("@Status", txtStatus.Text);

                // Open the connection and execute the query
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            // Clear form fields after successful order placement
            txtSupplierID.Text = "";
            txtOrderDate.Text = "";
            txtTotalAmount.Text = "";
            txtStatus.Text = "";

            // Show success message to the user
            Response.Write("<script>alert('order added successfully!');</script>");
        }
    }
}