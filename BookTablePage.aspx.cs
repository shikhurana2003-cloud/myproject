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
    public partial class BookTablePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    txtName.Text = Session["UserName"].ToString();
                }

                if (Session["Phone"] != null)
                {
                    txtPhone.Text = Session["Phone"].ToString();
                }

                if (Session["Email"] != null)
                {
                    txtEmail.Text = Session["Email"].ToString();
                }
            }
        }

        
        protected void btnBook_Click(object sender, EventArgs e)
        {
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
                using (SqlConnection con = new SqlConnection(
                    "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False"))
                {
                    con.Open();

                    string query = @"INSERT INTO BookTable
                            (Name, Phone, Email, Person, [Date])
                             VALUES (@Name, @Phone, @Email, @Person, @Date)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Phone", txtPhone.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Person", ddlPerson.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@Date", Convert.ToDateTime(txtDate.Text));

                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        Response.Write("<script>alert('✅ Booking Successful!');</script>");

                        txtName.Text = "";
                        txtPhone.Text = "";
                        txtEmail.Text = "";
                        ddlPerson.SelectedIndex = -1;
                        txtDate.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('⚠️ Booking Failed');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('❌ Error: " + ex.Message.Replace("'", "") + "');</script>");
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }
    }
}