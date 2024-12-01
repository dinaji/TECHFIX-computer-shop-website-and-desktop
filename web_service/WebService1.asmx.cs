using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;

namespace web_service
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]

    public class WebService1 : System.Web.Services.WebService
    {

        


        [WebMethod]

        public DataTable returnTable()
        {
            DataTable dt = new DataTable("tbl_employee");
            dt.Columns.Add("Item", typeof(string));
            dt.Columns.Add("Supplier1 Price", typeof(string));
            dt.Columns.Add("Supplier2 Price", typeof(string));


            dt.Rows.Add("Laptops", "225,000", "275,000");
            dt.Rows.Add("Processors", "32,000", "30,000");
            dt.Rows.Add("Motherboards", "38,000", "40,000");
            dt.Rows.Add("Memory", "8,3250", "6,000");
            dt.Rows.Add("Graphics Cards", "38,000", "40,000");
            dt.Rows.Add("Storage Devices", "19,000", "25,000");
            dt.Rows.Add("Desktop", "98,000", "110,000");
            dt.Rows.Add("Monitors", "38,000", "40,000");

            return dt;

        }



        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }





        public class SupplierServiceSoapClient
        {
            private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Documents\Visual Studio 2015\Projects\WebApplication6\WebApplication6\App_Data\Database1.mdf;Integrated Security=True";


            [WebMethod]
            public bool Login(string username, string password)

            {

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT COUNT(*) FROM supplier WHERE Username=@Username AND Password=@Password";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Username", username);
                        command.Parameters.AddWithValue("@Password", password);
                        connection.Open(); int count = (int)command.ExecuteScalar();
                        return count > 0;
                    }
                }
            }

           
        }
    }
}