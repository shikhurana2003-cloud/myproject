using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CafeteriaManagement
{
    public partial class UserHomePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            // Basic validation before inserting
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtPhone.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(ddlPerson.SelectedValue) ||
                string.IsNullOrWhiteSpace(txtDate.Text))
            {
                Response.Write("<script>alert('Please fill all fields');</script>");
                return;
            }

            try
            {
                using (con)
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                        con.Open();
                    string insertQuery = "INSERT INTO BookTable (Name, Phone, Email, Person, Date) VALUES (@Name, @Phone, @Email, @Person, @Date)";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);

                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Person", ddlPerson.SelectedValue);
                    cmd.Parameters.AddWithValue("@Date", txtDate.Text);

                    int result = cmd.ExecuteNonQuery();
                    con.Close();

                    if (result > 0)
                    {
                        Response.Write("<script>alert('✅ Booking Successful!');</script>");
                        //ddlPerson.ClearSelection();
                        txtName.Text = "";
                        txtPhone.Text = "";
                        txtEmail.Text = "";
                        ddlPerson.ClearSelection();
                        txtDate.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('⚠️ Booking Failed. Please try again.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                // Display user-friendly error
                Response.Write($"<script>alert('❌ Error: {ex.Message.Replace("'", "")}');</script>");
            }
        }
    }
}