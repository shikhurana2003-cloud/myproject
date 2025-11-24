using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeteriaManagement
{
    public partial class AdminLoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            string loginQuery = "SELECT COUNT(*) FROM Admin WHERE AdminId=@AdminId AND Password=@Password";
            SqlCommand cmd = new SqlCommand(loginQuery, con);

            // Add parameters properly
            cmd.Parameters.AddWithValue("@AdminId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

            int count = (int)cmd.ExecuteScalar(); // Execute query
            con.Close();

            if (count > 0)
            {
                // Response.Write("<script>alert('Login Successful');</script>");
                string script = "if (confirm('Login Successfull')) { window.location = 'AdminPage.aspx'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "", script, true);

            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password');</script>");
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string script = "if (confirm('Do you to go back to Home Page')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "", script, true);
        }
    }
}