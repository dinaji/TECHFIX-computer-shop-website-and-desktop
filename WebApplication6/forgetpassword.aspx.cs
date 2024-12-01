using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;


namespace WebApplication6
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Documents\Visual Studio 2015\Projects\WebApplication6\WebApplication6\App_Data\Database1.mdf;Integrated Security=True");
            // using (SqlConnection conn = new SqlConnection(connStr)) 
            {
                conn.Open(); string query = "SELECT Password FROM Users WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Email", email);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    string password = reader["Password"].ToString();
                    SendPasswordEmail(email, password);

                    // Show alert and then redirect
                    string script = "<script>alert('Password has been sent to your email.'); window.location='Customerlogin.aspx';</script>";
                    ClientScript.RegisterStartupScript(this.GetType(), "EmailSent", script);
                

                //  Response.Write("Password has been sent to your email.");
                // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password has been sent to your email.');", true);
                //Response.Redirect("Customerlogin.aspx");

            }
                else
                {

                    // Show alert if email not found
                    ClientScript.RegisterStartupScript(this.GetType(), "EmailNotFound", "alert('Email not found!');", true);
                    //Response.Write("Email not found.");
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email not found!');", true);
                }
            }
        }
        private void SendPasswordEmail(string email, string password)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email);
            mail.From = new MailAddress("techfixcomputershop@gmail.com");
            mail.Subject = "Your Password";
            mail.Body = $"Your password is: {password}";
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; // Your SMTP server address
            smtp.Port = 587; // Your SMTP port
            smtp.Credentials = new System.Net.NetworkCredential("techfixcomputershop@gmail.com", "ufve rewy wdfs vvpf");
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}
