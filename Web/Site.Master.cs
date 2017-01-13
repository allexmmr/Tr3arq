using System;

namespace Web
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.Url.ToString().Contains("Home") && !Request.Url.ToString().Contains("Portfolio"))
            {
                navButtons.Visible = false;
            }
        }
    }
}