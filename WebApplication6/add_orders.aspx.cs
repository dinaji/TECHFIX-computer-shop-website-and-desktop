using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class add_orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            string username = txtUsername.Text;
            string password = txtPassword.Text;
            if (username == "supplier2")
            { // Replace "your_password" with the actual password 
                if (password == "222")
                {
                    Response.Write("<script>alert('Welcome to supplier 02. This is your orders'); window.location='supplier2_view_orders.aspx';</script>");
                    // Redirect to the supplier dashboard
                }
                else
                {
                    Response.Write("<script>alert('Incorrect password.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid username.');</script>");

            }
        }
    }
}