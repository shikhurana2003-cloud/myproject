using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;

namespace CafeteriaManagement
{
    public partial class AddToCart : Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\acer\\Documents\\LoginUser.mdf;Integrated Security=True;Connect Timeout=30;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindCart();
        }

        private void BindCart()
        {
            if (Session["Cart"] != null)
            {
                var cart = (List<menu.CartItem>)Session["Cart"];
                gvCart.DataSource = cart;
                gvCart.DataBind();
                lblTotal.Text = cart.Sum(x => x.Total).ToString("N2");
            }
        }

        protected void gvCart_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            var cart = (List<menu.CartItem>)Session["Cart"];
            int index = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Increase")
                cart[index].Quantity++;
            else if (e.CommandName == "Decrease")
            {
                cart[index].Quantity--;
                if (cart[index].Quantity <= 0)
                    cart.RemoveAt(index);
            }

            Session["Cart"] = cart;
            BindCart();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {

            if (Session["Cart"] == null) return;

            var cart = (List<menu.CartItem>)Session["Cart"];

            // ✅ logged-in or guest
            string username = Session["UserName"] != null ? Session["UserName"].ToString() : "Guest";

            // ✅ Unique order id
            Guid orderId = Guid.NewGuid();
            Session["LastOrderId"] = orderId;   // store for bill page

            using (con)
            {
                con.Open();

                foreach (var item in cart)
                {
                    string query = @"INSERT INTO Orders
                (OrderId, UserName, ItemName, Quantity, Price, Total, OrderDate)
                VALUES (@OrderId, @UserName, @ItemName, @Quantity, @Price, @Total, @OrderDate)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@OrderId", orderId);
                        cmd.Parameters.AddWithValue("@UserName", Session["UserName"]);
                        cmd.Parameters.AddWithValue("@ItemName", item.Name);
                        cmd.Parameters.AddWithValue("@Quantity", item.Quantity);
                        cmd.Parameters.AddWithValue("@Price", item.Price);
                        cmd.Parameters.AddWithValue("@Total", item.Total);
                        cmd.Parameters.AddWithValue("@OrderDate", DateTime.Now);
                        cmd.ExecuteNonQuery();
                    }
                }
            }

            // ✅ clear cart
            Session["Cart"] = null;

            // Redirect to bill page
            Response.Redirect("BillPage.aspx");
        }

    }
}

