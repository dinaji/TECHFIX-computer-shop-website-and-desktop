using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


namespace WebApplication6
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Fetch the values from the textboxes
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            // Get the connection string from Web.config
            string connString = WebConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            // Database connection and insert operation
            using (SqlConnection connection = new SqlConnection(connString))
            {
                string query = "INSERT INTO ContactMessages (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Message", message);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        lblStatus.Text = "Message sent successfully!";
                        lblStatus.ForeColor = System.Drawing.Color.Green;
                    }
                    catch (Exception ex)
                    {
                        // Handle the error (log it, show error message, etc.)
                        lblStatus.Text = "Error occurred: " + ex.Message;
                        lblStatus.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
    }
}