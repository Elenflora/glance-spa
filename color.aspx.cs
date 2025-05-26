using System;
using System.Web.UI;

namespace Homepage1
{
    public partial class color : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            // This method can be used to load data dynamically
            // For example, if you want to retrieve video URLs or image sources from a database
        }
    }
}
