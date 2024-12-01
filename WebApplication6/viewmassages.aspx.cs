using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;


namespace WebApplication6
{
    public partial class viewmassages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMessages();
            }
        }

        private void LoadMessages()
        {
            string connString = WebConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connString))
            {
                string query = "SELECT Name, Email, Message FROM ContactMessages ";
                SqlDataAdapter da = new SqlDataAdapter(query, connection);
                DataTable dt = new DataTable();

                try
                {
                    connection.Open();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        MessagesGrid.DataSource = dt;
                        MessagesGrid.DataBind();
                    }
                    else
                    {
                        lblStatus.Text = "No messages found.";
                    }
                }
                catch (Exception ex)
                {
                    // Show the error message on the page for debugging purposes
                    lblStatus.Text = "Error: " + ex.Message;
                }
            }
        }
    }
    }
