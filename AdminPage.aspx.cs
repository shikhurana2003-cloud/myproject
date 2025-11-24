using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace CafeteriaManagement
{
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBookings();
                BindUsers();
                BindOrders();
                BindReviews();
            }
        }

        private void BindBookings()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT Name, Phone, Email, Person, Date FROM BookTable", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridViewBookings.DataSource = dt;
                GridViewBookings.DataBind();
                lblTotalBookings.Text = dt.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                lblTotalBookings.Text = "Error!";
                Console.WriteLine(ex.Message);
            }
        }

        private void BindUsers()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT Name, Phone, Email, Password, Address FROM Register", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridViewUsers.DataSource = dt;
                GridViewUsers.DataBind();
                lblTotalUsers.Text = dt.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                lblTotalUsers.Text = "Error!";
                Console.WriteLine(ex.Message);
            }
        }

        private void BindOrders()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Orders ORDER BY OrderDate DESC", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridViewOrders.DataSource = dt;
                GridViewOrders.DataBind();
                lblTotalOrders.Text = dt.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                lblTotalOrders.Text = "Error!";
                Console.WriteLine(ex.Message);
            }
        }

        private void BindReviews()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Reviews ORDER BY ReviewDate DESC", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridViewReviews.DataSource = dt;
                GridViewReviews.DataBind();
                lblTotalReviews.Text = dt.Rows.Count.ToString();
            }
            catch (Exception ex)
            {
                lblTotalReviews.Text = "Error!";
                Console.WriteLine(ex.Message);
            }
        }

        protected void GridViewReviews_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridViewReviews.DataKeys[e.RowIndex].Value);
            try
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Reviews WHERE Id = @Id", con);
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                BindReviews();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                con.Close();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'AdminLoginPage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }
    }
}
