using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.User.Identity.IsAuthenticated) { 
                logoutBtn.Click += new System.EventHandler(this.logoutBtn_Click);
                logoutBtn.Visible = true;
            }
            else
            {
                logoutBtn.Visible = false;
            }

        }

        public void logoutBtn_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("[SiteMaster] logoutBtn_Click");
            FormsAuthentication.SignOut();
            Response.Redirect("Default.aspx", true);
        }
    }
}