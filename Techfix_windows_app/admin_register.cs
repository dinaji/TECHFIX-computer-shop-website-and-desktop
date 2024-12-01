using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace Techfix_windows_app
{
    public partial class admin_register : Form
    {

    

        public admin_register()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string username = textBox1.Text;
            string password = textBox2.Text;
            string email = textBox1.Text;
            if
                (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(email))

            {
                // Display error message 
                MessageBox.Show("All feild fill required");

                return;

            }
            else
            {
                // Connection string to your database 

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Documents\Visual Studio 2015\Projects\WebApplication6\WebApplication6\App_Data\Database1.mdf;Integrated Security=True;Encrypt=False");
                //  using (SqlConnection connection = new SqlConnection(connectionString))

                {
                     con.Open();

                    string query = "INSERT INTO Admintable (AdminUsername, AdminPassword,Adminemail) VALUES (@AdminUsername, @AdminPassword, @Adminemail)";
                    SqlCommand command = new SqlCommand(query, con) ;

                    
                        command.Parameters.AddWithValue("@AdminUsername", username);
                        command.Parameters.AddWithValue("@AdminPassword", password);
                        command.Parameters.AddWithValue("@Adminemail", email);
                        command.ExecuteNonQuery();
                    MessageBox.Show("Register successful");
                    //  Response.Write("<script>alert('Registration successful!');</script>");

                    /* try
                     {
                         command.ExecuteNonQuery();
                         // Display success message 

                         MessageBox.Show("Register successful");
                     }
                     catch (Exception ex)
                     { // Display error message
                         MessageBox.Show("Register Failed..Try Again");
                     }*/

                }
            }
        }

        private void admin_register_Load(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
           Form7 frms = new Form7();
            frms.Show();
            this.Hide();
        }
    }
}
