using System;
using System.Web.UI;

namespace Homepage1
{
    public partial class Homepage1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Code to execute on first page load (if needed)
            }
        }

        // Example method: Redirect to a page when a button is clicked (if applicable)
        protected void RedirectToPage(object sender, EventArgs e)
        {
            Response.Redirect("TargetPage.aspx"); // Change to the appropriate target page
        }
    }
}
