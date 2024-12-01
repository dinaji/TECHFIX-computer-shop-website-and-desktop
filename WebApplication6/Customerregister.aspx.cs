using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace WebApplication6
{
    public partial class register : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string email = txtEmail.Text;

            // Validate that password contains at least three numbers

            if (!Regex.IsMatch(password, @"(?=(?:.*?\d){3})"))

            { // Display an alert and return if the password does not meet the criteria 

                Response.Write("<script>alert('Password must contain at least three numbers.');</script>");


                return;
            }
            else
            {




                string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();
                    string query = "INSERT INTO Users (Username, Password, Email) VALUES (@Username, @Password, @Email)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.ExecuteNonQuery();


                    // Show alert and redirect to Customerlogin.aspx after it
                    string script = "<script>alert('Registration successful!'); window.location='Customerlogin.aspx';</script>";
                    // The ClientScript.RegisterStartupScript method registers a JavaScript code block, which displays an alert message and then redirects to the login page (Customerlogin.aspx)after the user clicks "OK" on the alert.
                    ClientScript.RegisterStartupScript(this.GetType(), "RegistrationSuccess", script);

                    //  Response.Write("<script>alert('Registration successful!');</script>");
                    // Response.Redirect("Customerlogin.aspx");
                }
            }
        }
    }

}
