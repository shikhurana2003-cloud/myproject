using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CafeteriaManagement
{
    public partial class RegisterNow : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //if (string.IsNullOrWhiteSpace(txtName.Text) ||
            //   string.IsNullOrWhiteSpace(txtPhone.Text) ||
            //   string.IsNullOrWhiteSpace(txtEmail.Text) ||
            //   string.IsNullOrWhiteSpace(txtPassword.Text) ||
            //   string.IsNullOrWhiteSpace(txtAddress.Text))
            //{
            //    Response.Write("<script>alert('Please fill all fields');</script>");
            //    return;
            //}
            try
            {
                con.Open();

                string insertQuery = "INSERT INTO Register (Name,Phone,Email,Address,Password) VALUES (@Name,@Phone,@Email,@Address,@Password)";
                SqlCommand cmd = new SqlCommand(insertQuery, con);

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                int result = cmd.ExecuteNonQuery(); // returns number of rows affected

                con.Close();

                if (result > 0)
                {
                    //  Response.Write("<script>alert('Registration Successful');</script>");
                    string script = "if (confirm('Registered Successfully')) { window.location = 'UserLoginPage.aspx'; }";
                    ClientScript.RegisterStartupScript(this.GetType(), "", script, true);
                    txtName.Text = "";
                    txtPhone.Text = "";
                    txtEmail.Text = "";
                    txtPassword.Text = "";
                    txtAddress.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Registration Failed');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}