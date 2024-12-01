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
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string adminUsername = AdminUsername.Text;
            string adminPassword = AdminPassword.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "SELECT COUNT(1) FROM Admintable WHERE AdminUsername=@AdminUsername AND AdminPassword=@AdminPassword";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@AdminUsername", adminUsername);
                cmd.Parameters.AddWithValue("@AdminPassword", adminPassword);

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count == 1)
                {
                    // Login successful, show success message and then redirect
                    string script = "<script>alert('Login successful!'); window.location='AdminDashboard.aspx';</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "LoginSuccess", script);
                }
            
                else
                {
                    // Login failed, show alert message
                    Response.Write("<script>alert('Login failed. Please check your username and password.');</script>");
                }
            }
        }

    
    }
    }
