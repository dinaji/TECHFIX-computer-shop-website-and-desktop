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
    public partial class Supplierlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {


                       

                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text.Trim();

                // Create instance of the web service
                SupplierService.SupplierServiceSoapClient client = new SupplierService.SupplierServiceSoapClient();
                bool isValidUser = client.Login(username, password);

                if (isValidUser)
                {
                // Login successful, show success message and then redirect
                string script = "<script>alert('Login successful!'); window.location='supplierdashboard.aspx';</script>";
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
    



    



