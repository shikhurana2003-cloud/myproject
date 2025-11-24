using System;
using System.Collections.Generic;
using System.Web.UI;

namespace CafeteriaManagement
{
    public partial class menu : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Cart"] != null)
            {
                var cart = (List<CartItem>)Session["Cart"];
                lblCartCount.Text = cart.Count.ToString();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Button btn = (System.Web.UI.WebControls.Button)sender;
            string[] args = btn.CommandArgument.Split(',');
            string name = args[0];
            decimal price = Convert.ToDecimal(args[1]);

            List<CartItem> cart = Session["Cart"] as List<CartItem> ?? new List<CartItem>();

            // If item exists, increase quantity
            CartItem existing = cart.Find(i => i.Name == name);
            if (existing != null)
                existing.Quantity++;
            else
                cart.Add(new CartItem { Name = name, Price = price, Quantity = 1 });

            Session["Cart"] = cart;
            lblCartCount.Text = cart.Count.ToString();
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            string script = "if (confirm('Are you sure you want to log out?')) { window.location = 'MainHomePage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "logoutConfirm", script, true);
        }
        public class CartItem
        {
            public string Name { get; set; }
            public decimal Price { get; set; }
            public int Quantity { get; set; }
            public decimal Total => Price * Quantity;
        }

    }
}
