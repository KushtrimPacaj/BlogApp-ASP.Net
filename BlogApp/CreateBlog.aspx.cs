using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class CreateBlog : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {

            WebService1 webService = new WebService1();
            int blogID = webService.CreateBlog(titleTextBox.Text, contentTextBox.Text);
            Response.Redirect("ViewBlog.aspx?blog_id=" + blogID);

        }
    }
}