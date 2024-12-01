using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class Supplierregister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string email = txtEmail.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["database1"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "INSERT INTO supplier (Username, Password, Email) VALUES (@Username, @Password, @Email)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.ExecuteNonQuery();

                // Show alert and redirect to Customerlogin.aspx after it
                string script = "<script>alert('Registration successful!'); window.location='Supplierlogin.aspx';</script>";
                ClientScript.RegisterStartupScript(this.GetType(), "RegistrationSuccess", script);


                // Response.Write("<script>alert('Registration successful!');</script>");
                // Response.Redirect("Supplierlogin.aspx");
            }
        }
    }
}