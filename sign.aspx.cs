using System;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI;

namespace Homepage1
{
    public partial class sign : System.Web.UI.Page
    {
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();
            string confirmPassword = txtConfirmPassword.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string address = txtAddress.Text.Trim();

            // Ensure all required fields are filled
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
            {
                lblMessage.Text = "All required fields must be filled!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Ensure passwords match
            if (password != confirmPassword)
            {
                lblMessage.Text = "Passwords do not match!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate email format
            string emailPattern = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
            if (!Regex.IsMatch(email, emailPattern))
            {
                lblMessage.Text = "Invalid email format!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Validate phone number (if entered)
            if (!string.IsNullOrEmpty(phone) && !Regex.IsMatch(phone, @"^\d{10}$"))
            {
                lblMessage.Text = "Phone number must be 10 digits!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string connectionString = "Data Source=LAPTOP-HH91L0RF\\MSSQLSERVER02;Initial Catalog=signin;Integrated Security=True;TrustServerCertificate=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Check if the email already exists
                    string checkQuery = "SELECT COUNT(*) FROM signup WHERE Email = @Email";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue("@Email", email);
                        int count = (int)checkCmd.ExecuteScalar();

                        if (count > 0)
                        {
                            lblMessage.Text = "Email is already registered!";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            return;
                        }
                    }

                    // Insert user into database
                    string query = "INSERT INTO signup (UserId, Name, Email, Password, Phone, Address) " +
                                   "VALUES (NEWID(), @Name, @Email, @Password, @Phone, @Address)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password); // Consider hashing the password
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.Parameters.AddWithValue("@Address", address);

                        cmd.ExecuteNonQuery();
                    }

                    lblMessage.Text = "Account created successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error: " + ex.Message;
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}
