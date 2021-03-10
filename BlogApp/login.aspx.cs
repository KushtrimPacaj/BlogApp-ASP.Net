using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlogApp
{
    public partial class login : System.Web.UI.Page
    {

        string connectionString = ConfigurationManager.ConnectionStrings["blogdbConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cmdLogin_ServerClick(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("[ValidateUser] Istart");

            if (ValidateUser(txtUserName.Value, txtUserPass.Value))
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Value,true);
            else
                Response.Redirect("login.aspx", true);
        }

        private bool ValidateUser(string userName, string passWord)
        {
            System.Diagnostics.Debug.WriteLine("[ValidateUser] Istart");

            SqlConnection conn;
            SqlCommand cmd;
            bool valid = false;
            if ((null == userName) || (0 == userName.Length))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
                return false;
            }

            if ((null == passWord) || (0 == passWord.Length) )
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
                return false;
            }

            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();


                cmd = new SqlCommand("Select count(*) from AdminUsers where username=@userName and password=@pwd", con);
                cmd.Parameters.Add("@userName", userName);
                cmd.Parameters.Add("@pwd", passWord);




                valid = (int)cmd.ExecuteScalar() == 1;

                System.Diagnostics.Trace.WriteLine("[ValidateUser] is Valid?  " +valid);
                // Cleanup command and connection objects.
                cmd.Dispose();
                con.Dispose();
            }
            catch (Exception ex)
            {
                // Add error handling here for debugging.
                // This error message should not be sent back to the caller.
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }

            return valid;
        }
    }


}