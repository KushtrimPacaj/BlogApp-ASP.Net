using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace BlogApp
{

    public partial class Contact : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["blogdbConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

    
        protected void submitBtn_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("[Contact] submitBtn_Click");

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into ContactData values( @name, @email,@content)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@name", nameTextBox.Text);

            cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
            cmd.Parameters.AddWithValue("@content", contentTextBox.Text);


            cmd.ExecuteNonQuery();
		    con.Close();
        }
    }
}