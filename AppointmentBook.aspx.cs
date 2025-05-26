using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Homepage1
{
    public partial class AppointmentBook : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                serviceOptions.Items.Clear();
                serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Select an option", ""));
            }
        }

        protected void serviceType_SelectedIndexChanged(object sender, EventArgs e)
        {
            serviceOptions.Items.Clear();

            switch (serviceType.SelectedValue)
            {
                case "Hair":
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Haircut", "Haircut"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Hair Coloring", "Hair Coloring"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Hairstyle", "Hairstyle"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Hairspa", "Hairspa"));
                    break;
                case "Nail":
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Manicure", "Manicure"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Pedicure", "Pedicure"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("NailArt", "NailArt"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Luxury Polish", "Luxury Polish"));
                    break;
                case "Makeup":
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Bridal Makeup", "Bridal Makeup"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Party Makeup", "Party Makeup"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Nude Makeup", "Nude Makeup"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Eyeshadow", "Eyeshadow"));
                    break;
                case "Skincare":
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Facialspa", "Facialspa"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Exfoliation", "Exfoliation"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Cleaning", "Cleaning"));
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Relaxing", "Relaxing"));
                    break;
                default:
                    serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Select an option", ""));
                    break;
            }
        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string email = txtEmail.Text.Trim();
            string serviceTypeValue = serviceType.SelectedValue;
            string serviceOptionValue = serviceOptions.SelectedValue;
            string appointmentTimeValue = appointmentTime.Text.Trim();
            string appointmentDateValue = appointmentDate.Text.Trim();

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(serviceTypeValue) || string.IsNullOrEmpty(serviceOptionValue) ||
                string.IsNullOrEmpty(appointmentTimeValue) || string.IsNullOrEmpty(appointmentDateValue))
            {
                lblMessage.Text = "Please fill in all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string connectionString = "Data Source=LAPTOP-HH91L0RF\\MSSQLSERVER02;Initial Catalog=signin;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // Check if the selected date and time slot is already booked
                    string checkQuery = "SELECT COUNT(*) FROM Appointmentss WHERE AppointmentDate = @AppointmentDate AND AppointmentTime = @AppointmentTime";
                    using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                    {
                        checkCmd.Parameters.AddWithValue("@AppointmentDate", appointmentDateValue);
                        checkCmd.Parameters.AddWithValue("@AppointmentTime", appointmentTimeValue);

                        int count = (int)checkCmd.ExecuteScalar();
                        if (count > 0)
                        {
                            lblMessage.Text = "This time slot is already booked. Please choose another time.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                            return;
                        }
                    }

                    // Insert the appointment since the slot is available
                    string insertQuery = "INSERT INTO Appointmentss (FullName, PhoneNumber, Email, ServiceType, ServiceOption, AppointmentTime, AppointmentDate) " +
                                         "VALUES (@FullName, @PhoneNumber, @Email, @ServiceType, @ServiceOption, @AppointmentTime, @AppointmentDate)";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                    {
                        cmd.Parameters.AddWithValue("@FullName", name);
                        cmd.Parameters.AddWithValue("@PhoneNumber", phone);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@ServiceType", serviceTypeValue);
                        cmd.Parameters.AddWithValue("@ServiceOption", serviceOptionValue);
                        cmd.Parameters.AddWithValue("@AppointmentTime", appointmentTimeValue);
                        cmd.Parameters.AddWithValue("@AppointmentDate", appointmentDateValue);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Successfully booked!";
                            lblMessage.ForeColor = System.Drawing.Color.Green;

                            // Reset form fields
                            txtName.Text = "";
                            txtPhone.Text = "";
                            txtEmail.Text = "";
                            serviceType.SelectedIndex = 0;
                            serviceOptions.Items.Clear();
                            serviceOptions.Items.Add(new System.Web.UI.WebControls.ListItem("Select an option", ""));
                            appointmentTime.Text = "";
                            appointmentDate.Text = "";
                        }
                        else
                        {
                            lblMessage.Text = "Booking failed. Please try again.";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
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
