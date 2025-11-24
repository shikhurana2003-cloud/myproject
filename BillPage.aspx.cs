using System;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;

namespace CafeteriaManagement
{
    public partial class BillPage : Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBill();
            }
        }

        private void LoadBill()
        {
            if (Session["LastOrderId"] == null)
            {
                lblGrandTotal.Text = "0.00";
                return;
            }

            Guid orderId = (Guid)Session["LastOrderId"];

            using (con)
            {
                con.Open();

                 string query = @"
    SELECT 
        R.Name AS CustomerName,
        O.ItemName,
        O.Quantity,
        O.Price,
        O.Total,
        O.OrderDate
    FROM Orders O
    INNER JOIN Register R ON O.UserName = R.Name
    WHERE O.OrderId = @OrderId";


                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@OrderId", orderId);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                con.Close();

                if (dt.Rows.Count > 0)
                {
                    string username = dt.Rows[0]["CustomerName"].ToString();
                    lblUserName.Text = username;
                    lblDate.Text = Convert.ToDateTime(dt.Rows[0]["OrderDate"]).ToString("dd/MM/yyyy hh:mm tt");

                    gvBill.DataSource = dt;
                    gvBill.DataBind();

                    decimal total = dt.AsEnumerable().Sum(r => r.Field<decimal>("Total"));
                    lblGrandTotal.Text = total.ToString("N2");
                }
            }
        }
    }
}

