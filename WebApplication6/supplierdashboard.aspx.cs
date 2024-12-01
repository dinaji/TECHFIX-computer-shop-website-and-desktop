using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication6
{
    public partial class supplierdashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogoutButton3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            // Redirect to login page
            Response.Redirect("Supplierlogin.aspx");
        }
    }
}