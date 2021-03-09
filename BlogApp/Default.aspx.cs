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
    public partial class _Default : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["blogdbConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            loadBlogs();
        }

        private void loadBlogs()
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string query = "select id, name,  SUBSTRING(content, 1, 400) AS content from Blogs where Name like '" + searchText.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            nothingFoundLabel.Visible = GridView1.Rows.Count == 0 ? true : false;


            con.Close();
        }

        protected void searchBtn_Click(object sender, EventArgs e)
        {

        }
    }
}