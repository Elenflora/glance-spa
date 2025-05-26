using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.SqlClient;
using System.Web.ModelBinding;
namespace Homepage1
{
    public partial class Bookingappointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-HH91L0RF\\MSSQLSERVER02;Initial Catalog=signin;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Appointmentss", con);
            RepeatInformation.DataSource = cmd.ExecuteReader();
            RepeatInformation.DataBind();
            con.Close();
        }

    }
}

