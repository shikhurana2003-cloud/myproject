using System;
using System.Data.SqlClient;

namespace CafeteriaManagement
{
    public partial class ReviewPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtName.Text) || string.IsNullOrWhiteSpace(hfRating.Value))
            {
                lblMessage.Text = "⚠️ Please enter your name and select a rating.";
                lblMessage.CssClass = "text-danger text-center";
                return;
            }

            try
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Reviews (Name, Rating, Comments, ReviewDate) VALUES (@Name, @Rating, @Comments, @ReviewDate)", con))
                {
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Rating", Convert.ToInt32(hfRating.Value));
                    cmd.Parameters.AddWithValue("@Comments", txtComments.Text.Trim());
                    cmd.Parameters.AddWithValue("@ReviewDate", DateTime.Now);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    lblMessage.Text = "✅ Thank you for your feedback!";
                    lblMessage.CssClass = "text-success text-center fw-bold";

                    // Reset fields
                    txtName.Text = "";
                    txtComments.Text = "";
                    hfRating.Value = "";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "❌ Error submitting review.";
                lblMessage.CssClass = "text-danger text-center";
                Console.WriteLine(ex.Message);
            }
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }
    }
}
