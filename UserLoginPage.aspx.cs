using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeteriaManagement
{
    public partial class UserLoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
          ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    string loginQuery = "SELECT COUNT(*) FROM Register WHERE Email=@Email AND Password=@Password";

        //    // string loginQuery = "SELECT COUNT(*) FROM Register WHERE Name=@Name AND Password=@Password";
        //    SqlCommand cmd = new SqlCommand(loginQuery, con);
        //    cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());

        //    // Add parameters properly
        //   // cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
        //    cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

        //    int count = (int)cmd.ExecuteScalar(); // Execute query
        //    con.Close();

        //    if (count > 0)
        //    {
        //        // Response.Write("<script>alert('Login Successful');</script>");
        //        string script = "if (confirm('Login Successfull')) { window.location = 'UserHomePage.aspx'; }";
        //        ClientScript.RegisterStartupScript(this.GetType(), "", script, true);

        //    }
        //    else
        //    {
        //        Response.Write("<script>alert('Invalid Username or Password');</script>");
        //    }
        //}
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False"))
                {
                    con.Open();

                    string query = "SELECT * FROM Register WHERE Email=@Email AND Password=@Password";
                    SqlCommand cmd = new SqlCommand(query, con);

                    cmd.Parameters.AddWithValue("@Email", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());

                    SqlDataReader dr = cmd.ExecuteReader();

                    if (dr.Read())
                    {
                        Session["UserName"] = dr["Name"].ToString();
                        Session["Phone"] = dr["Phone"].ToString();
                        Session["Email"] = dr["Email"].ToString();
                        Session["Name"] = dr["Password"].ToString();
                        Session["Phone"] = dr["Address"].ToString();

                        Response.Redirect("UserHomePage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Username or Password');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            string script = "if (confirm('Do you to go back to Home Page')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "", script, true);
        }
        // protected void btnLogin_Click(object sender, EventArgs e)
        //    {
        //        try
        //        {
        //            con.Open();
        //            string query = "SELECT * FROM Register WHERE Email=@Email AND Password=@Password";
        //            SqlCommand cmd = new SqlCommand(query, con);
        //            cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
        //            cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

        //            SqlDataReader dr = cmd.ExecuteReader();

        //            if (dr.Read())
        //            {
        //                // ✅ Step 1: Set Session variables
        //                Session["Email"] = dr["Email"].ToString();
        //                Session["Name"] = dr["Name"].ToString();

        //                // ✅ Step 2: Set a Cookie (optional)
        //                HttpCookie userCookie = new HttpCookie("UserEmail");
        //                userCookie.Value = dr["Email"].ToString();
        //                userCookie.Expires = DateTime.Now.AddMinutes(30); // valid for 30 minutes
        //                Response.Cookies.Add(userCookie);

        //                // ✅ Step 3: Redirect to dashboard or home
        //                Response.Redirect("UserHomePage .aspx");
        //            }
        //            else
        //            {
        //                Response.Write("<script>alert('Invalid Email or Password');</script>");
        //            }

        //            con.Close();
        //        }
        //        catch (Exception ex)
        //        {
        //            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        //        }
        //    }
        //}

       
    }
}