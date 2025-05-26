using System;

namespace Homepage1
{
    public partial class Concern : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No need to manipulate products in code-behind anymore; JavaScript handles it
        }

        protected void ApplyFilters(object sender, EventArgs e)
        {
            string skinType = "";

            // Determine which radio button is selected
            if (RadioButtonDrySkin.Checked)
                skinType = "DrySkin";
            else if (RadioButtonNormalCombination.Checked)
                skinType = "NormalCombination";
            else if (RadioButtonOilySkin.Checked)
                skinType = "OilySkin";
            else if (RadioButtonSensitiveSkin.Checked)
                skinType = "SensitiveSkin";

            // Redirect to the same page with the selected skin type as a query parameter
            string redirectUrl = "Concern.aspx?skinType=" + skinType;
            Response.Redirect(redirectUrl);
        }
    }
}
