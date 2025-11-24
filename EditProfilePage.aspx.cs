using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace CafeteriaManagement
{
    public partial class EditProfilePage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    // Assuming you store logged-in user's email in Session
            //    if (Session["Email"] != null)
            //    {
            //        LoadUserData(Session["Email"].ToString());
            //    }
            //    else
            //    {
            //        Response.Redirect("EditProfilePage.aspx");
            //    }
            //}
        

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
                if (Session["Password"] != null)
                {
                    txtPassword.Attributes["value"] = Session["Password"].ToString();
                }
                if (Session["Address"] != null)
                {
                    txtAddress.Text = Session["Address"].ToString();
                }
            }
        }

        
        

        protected void btnShow_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                Response.Write("<script>alert('Please enter your Email first');</script>");
                return;
            }
            try
            {
                con.Open();
                string query = "SELECT Name, Phone, Email, Password, Address FROM Register WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    txtName.Text = dr["Name"].ToString();
                    txtPhone.Text = dr["Phone"].ToString();
                    txtEmail.Text = dr["Email"].ToString();
                    txtPassword.Attributes["value"] = dr["Password"].ToString();
                    txtAddress.Text = dr["Address"].ToString();
                }
                dr.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading profile: " + ex.Message + "');</script>");
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();

                string updateQuery = "UPDATE Register SET Name=@Name, Phone=@Phone, Address=@Address, Password=@Password WHERE Email=@Email";
                SqlCommand cmd = new SqlCommand(updateQuery, con);

                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

                int result = cmd.ExecuteNonQuery();

                con.Close();

                if (result > 0)
                {
                    Response.Write("<script>alert('Profile Updated Successfully');</script>");
                    txtName.Text = "";
                    txtPhone.Text = "";
                    txtEmail.Text = "";
                    txtPassword.Text = "";
                    txtAddress.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('No record found to update');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
            protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }

    }
}

