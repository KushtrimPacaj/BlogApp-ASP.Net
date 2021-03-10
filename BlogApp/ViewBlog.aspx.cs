using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class ViewBlog : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["blogdbConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            int param = Convert.ToInt32(Request.QueryString["blog_id"]);
            loadBlog(param);
     
        }

        private void loadBlog(int id)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string query = "select top 1 id, name, content from Blogs where id = @id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add("@id", id);

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                titleLabel.InnerText = reader.GetString(1);
                contentSpan.InnerHtml = reader.GetString(2).Replace("\r\n", "<br/>");
            }


            reader.Read();
            con.Close();
        }

    }


}