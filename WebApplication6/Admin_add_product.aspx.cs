using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication6
{
    public partial class Admin_add_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();  // Load categories into the dropdown for product addition
            }
        }

        private void LoadCategories()
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
            string query = "SELECT CategoryID, CategoryName FROM Category";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                ddlCategory.DataSource = cmd.ExecuteReader();
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataBind();
            }
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtProductName.Text) || ddlCategory.SelectedIndex == -1)
            {
                lblMessage.Text = "Please enter a product name and select a category.";
                return;
            }

            decimal price;
            if (!decimal.TryParse(txtPrice.Text, out price))
            {
                lblMessage.Text = "Invalid price format.";
                return;
            }

            string productImagePath = null;
            if (fuProductImage.HasFile)
            {
                try
                {
                    string productImageDir = Server.MapPath("~/ProductImages/");
                    if (!Directory.Exists(productImageDir))
                    {
                        Directory.CreateDirectory(productImageDir);
                    }

                    string fileName = Path.GetFileName(fuProductImage.FileName);
                    productImagePath = "~/ProductImages/" + fileName;
                    fuProductImage.SaveAs(Server.MapPath(productImagePath));
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "File upload failed: " + ex.Message;
                    return;
                }
            }

            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "INSERT INTO dbo.Products (ProductName, CategoryID, Price, ProductImage) VALUES (@ProductName, @CategoryID, @Price, @ProductImage)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@ProductName", txtProductName.Text);
                cmd.Parameters.AddWithValue("@CategoryID", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@Price", price);
                cmd.Parameters.AddWithValue("@ProductImage", productImagePath ?? (object)DBNull.Value);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            lblMessage.Text = "Product added successfully!";
        }
    }
}