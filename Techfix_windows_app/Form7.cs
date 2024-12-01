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

namespace Techfix_windows_app
{
    public partial class Form7 : Form
    { 

         string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Documents\Visual Studio 2015\Projects\WebApplication6\WebApplication6\App_Data\Database1.mdf;Integrated Security=True";

    
        public Form7()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (ValidateLogin(username, password))
            {
                MessageBox.Show("Login successful!");
                // Proceed with the application's flow, e.g., open a new form
                Form6 nextForm = new Form6();

                // Show the new form
                nextForm.Show();

                // Optionally hide or close the current form
                this.Hide(); // Hides the current form (Form1)
                             // this.Close(); // Alternatively, you can close Form1 if you want to terminate it
            }
            else
            {
                MessageBox.Show("Invalid username or password. Please try again.");
            }
        }

        private bool ValidateLogin(string username, string password)
        {
            // SQL query to check if the user exists with the provided username and password
            string query = "SELECT COUNT(1) FROM Admintable WHERE AdminUsername=@AdminUsername AND AdminPassword=@AdminPassword";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Use parameterized queries to avoid SQL injection
                        cmd.Parameters.AddWithValue("@AdminUsername", username);
                        cmd.Parameters.AddWithValue("@AdminPassword", password);

                        // Execute the query and check the result
                        int result = (int)cmd.ExecuteScalar();

                        return result == 1; // Return true if login is successful
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error: {ex.Message}");
                    return false; // In case of error, return false
                }
            }
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            admin_register frms = new admin_register();
            frms.Show();
            this.Hide();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
    }
}
