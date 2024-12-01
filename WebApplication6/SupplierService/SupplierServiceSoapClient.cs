using System;
using System.Data.SqlClient;

namespace SupplierService
{


    public class SupplierServiceSoapClient
    {
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\Documents\Visual Studio 2015\Projects\WebApplication6\WebApplication6\App_Data\Database1.mdf;Integrated Security=True";

        public bool Login(string username, string password)

        {
            try
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

            catch (Exception ex)
            {
                LogError(ex);
                return false;
            }
        }

        private void LogError(Exception ex)

        {
            System.IO.File.AppendAllText(@"C:\ErrorLog.txt", DateTime.Now.ToString() + ": " + ex.ToString() + Environment.NewLine);

        }
    }
}
