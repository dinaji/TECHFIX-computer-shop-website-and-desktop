﻿using System;
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

    

    public partial class Form5 : Form
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Documents\Visual Studio 2015\Projects\WebApplication6\WebApplication6\App_Data\Database1.mdf;Integrated Security=True";

        public Form5()
        {
           
        
            InitializeComponent();
        
    }

        private void LoadInventory()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM AdminInventory", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
            }
        }


        private void button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "INSERT INTO AdminInventory (SupplierID, ItemName, Quantity, UnitPrice) VALUES (@SupplierID, @ItemName, @Quantity, @UnitPrice)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@SupplierID", int.Parse(supplierid.Text)); // Ensure you have a txtSupplierID TextBox
                    cmd.Parameters.AddWithValue("@ItemName", itemname.Text);
                    cmd.Parameters.AddWithValue("@Quantity", int.Parse(quantity.Text));
                    cmd.Parameters.AddWithValue("@UnitPrice", decimal.Parse(unitprice.Text));
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Item added successfully!");
                    LoadInventory();
                }
            }
        }

        

        private void button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "DELETE FROM AdminInventory WHERE ItemID=@ItemId";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ItemId", int.Parse(itemid.Text));
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Item deleted successfully!");
                    LoadInventory();
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "UPDATE AdminInventory SET SupplierID=@SupplierID, ItemName=@ItemName, Quantity=@Quantity, UnitPrice=@UnitPrice WHERE ItemID=@ItemId";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ItemId", int.Parse(itemid.Text));
                    cmd.Parameters.AddWithValue("@SupplierID", int.Parse(supplierid.Text)); // Ensure you have a txtSupplierID TextBox
                    cmd.Parameters.AddWithValue("@ItemName", itemname.Text);
                    cmd.Parameters.AddWithValue("@Quantity", int.Parse(quantity.Text));
                    cmd.Parameters.AddWithValue("@UnitPrice", decimal.Parse(unitprice.Text));
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Item updated successfully!");
                    LoadInventory();
                }
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
           


        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Form6 frms = new Form6();
            frms.Show();
            this.Hide();
        }

        private void GridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            LoadInventory();
        }
    }
}