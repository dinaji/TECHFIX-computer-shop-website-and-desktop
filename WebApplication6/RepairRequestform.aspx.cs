using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication6
{
    public partial class RepairRequestform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string customerName = CustomerName.Text;
            string repairType = RepairType.Text;
            string description = Description.Text;
            string status = Status.SelectedValue;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO RepairRequests (CustomerName, RepairType, Description, Status, RequestDate) " +
                               "VALUES (@CustomerName, @RepairType, @Description, @Status, @RequestDate)";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@CustomerName", customerName);
                cmd.Parameters.AddWithValue("@RepairType", repairType);
                cmd.Parameters.AddWithValue("@Description", description);
                cmd.Parameters.AddWithValue("@Status", status);
                cmd.Parameters.AddWithValue("@RequestDate", DateTime.Now);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            // Clear the form fields after successful submission
            CustomerName.Text = "";
            RepairType.Text = "";
            Description.Text = "";
            Status.SelectedIndex = 0;

            // Show success message to the user
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "alert('Repair request added successfully.');", true);
        }
    }
    }
