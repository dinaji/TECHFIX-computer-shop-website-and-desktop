using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication6
{
    public partial class login : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {



        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
             string username = txtUsername.Text;
             string password = txtPassword.Text;

             // Fetch connection string from the configuration file
             string connectionString = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

             using (SqlConnection con = new SqlConnection(connectionString))
             {
                 con.Open();

                 // Modify query to fetch role as well
                 string query = "SELECT COUNT(1) FROM Users WHERE Username=@Username AND Password=@Password";
                 SqlCommand cmd = new SqlCommand(query, con);
                 cmd.Parameters.AddWithValue("@Username", username);
                 cmd.Parameters.AddWithValue("@Password", password);

                 int count = Convert.ToInt32(cmd.ExecuteScalar());

                 if (count == 1)
                 {
                    // Login successful, show success message and then redirect
                    string script = "<script>alert('Login successful!'); window.location='customerdashboard.aspx';</script>";
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
 

    
