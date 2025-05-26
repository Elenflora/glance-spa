using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Homepage1
{
    public partial class Login_part : System.Web.UI.Page
    {
        // Define admin credentials
        private const string AdminEmail = "admin@example.com";
        private const string AdminPassword = "AdminPass123";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Retrieve values from input fields
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string usertype = UserType.SelectedItem.Text;  // Get selected dropdown value

            // Validate inputs
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(usertype))
            {
                ErrorMessage.Text = "All fields are required.";
                return;
            }

            // Check if the user is an admin
            if (usertype == "Admin")
            {
                // Check if admin credentials are correct
                if (email == AdminEmail && password == AdminPassword)
                {
                    Response.Redirect("Bookingappointment.aspx"); // Replace with your actual admin page
                }
                else
                {
                    ErrorMessage.Text = "Invalid admin credentials.";
                }
                return;
            }

            // Database connection string
            string connectionString = "Data Source=LAPTOP-HH91L0RF\\MSSQLSERVER02; Initial Catalog=signin; Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // SQL Query to validate user login
                    string query = "SELECT COUNT(*) FROM signup WHERE Email = @Email AND Password = @Password AND Usertype = @Usertype";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);
                        cmd.Parameters.AddWithValue("@Usertype", usertype);

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            Response.Redirect("Homepage1.aspx"); // Replace with your actual user homepage
                        }
                        else
                        {
                            ErrorMessage.Text = "Invalid login credentials.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    ErrorMessage.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }
}







