<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="CafeteriaManagement.AddToCart" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Your Cart</title>
  <link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
 
<form id="form1" runat="server">
  <div class="container mt-5">
    <h2 class="text-center">Your Cart</h2>

    <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="false"
                  CssClass="table table-bordered text-center"
                  OnRowCommand="gvCart_RowCommand">
      <Columns>
        <asp:BoundField DataField="Name" HeaderText="Item Name" />
        <asp:BoundField DataField="Price" HeaderText="Price (₹)" />
        <asp:BoundField DataField="Quantity" HeaderText="Qty" />
        <asp:BoundField DataField="Total" HeaderText="Total (₹)" />
        <asp:TemplateField HeaderText="Actions">
          <ItemTemplate>
            <asp:Button runat="server" CommandName="Increase" CommandArgument='<%# Container.DataItemIndex %>'
                        Text="+" CssClass="btn btn-success btn-sm" />
            <asp:Button runat="server" CommandName="Decrease" CommandArgument='<%# Container.DataItemIndex %>'
                        Text="-" CssClass="btn btn-danger btn-sm" />
          </ItemTemplate>
        </asp:TemplateField>
      </Columns>
    </asp:GridView>

    <h4 class="text-right">Total Amount: ₹<asp:Label ID="lblTotal" runat="server"></asp:Label></h4>

    <div class="text-center mt-4">
      <a href="menu.aspx" class="btn btn-secondary">Back to Menu</a>
      <asp:Button ID="btnCheckout" runat="server" Text="Checkout" CssClass="btn btn-success" OnClick="btnCheckout_Click" />
    </div>
  </div>
</form>
</body>
</html>
