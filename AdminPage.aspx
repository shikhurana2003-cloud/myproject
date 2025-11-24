<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CafeteriaManagement.AdminPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard - Cafeteria Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #f4f6f9;
            font-family: 'Poppins', sans-serif;
        }
        .navbar {
            background-color: #007bff !important;
        }
        .navbar-brand {
            font-weight: 600;
            color: white !important;
        }
        .nav-link {
            color: white !important;
        }
        .container {
            margin-top: 30px;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: scale(1.02);
        }
        .tab-content {
            margin-top: 25px;
        }
        .gridview th {
            background-color: #007bff;
            color: white;
            text-align: left;
            padding: 10px;
        }
        .gridview td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        .gridview tr:hover {
            background-color: #f1f9ff;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">🍽️ Cafeteria Admin</a>
                <div class="d-flex">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-light btn-sm" OnClick="btnLogout_Click" />
                </div>
            </div>
        </nav>

        <div class="container">
            <h2 class="mt-4 text-primary">📊 Dashboard Overview</h2>
            <hr />

            <!-- Summary Cards -->
            <!-- Summary Cards -->
<div class="row text-center mb-4">
    <div class="col-md-3">
        <div class="card p-3 bg-primary text-white">
            <h4>Total Bookings</h4>
            <asp:Label ID="lblTotalBookings" runat="server" CssClass="fs-3 fw-bold"></asp:Label>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card p-3 bg-success text-white">
            <h4>Registered Users</h4>
            <asp:Label ID="lblTotalUsers" runat="server" CssClass="fs-3 fw-bold"></asp:Label>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card p-3 bg-warning text-white">
            <h4>Total Orders</h4>
            <asp:Label ID="lblTotalOrders" runat="server" CssClass="fs-3 fw-bold"></asp:Label>
        </div>
    </div>

    <div class="col-md-3">
        <div class="card p-3 bg-info text-white">
            <h4>Total Reviews</h4>
            <asp:Label ID="lblTotalReviews" runat="server" CssClass="fs-3 fw-bold"></asp:Label>
        </div>
    </div>
</div>


            <!-- Tabs -->
            <ul class="nav nav-tabs" id="adminTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="bookings-tab" data-bs-toggle="tab" data-bs-target="#bookings" type="button" role="tab" aria-controls="bookings" aria-selected="true">
                        📅 Bookings
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="users-tab" data-bs-toggle="tab" data-bs-target="#users" type="button" role="tab" aria-controls="users" aria-selected="false">
                        👥 Registered Users
                    </button>
                </li>
                  <li class="nav-item" role="presentation">
        <button class="nav-link" id="orders-tab" data-bs-toggle="tab" data-bs-target="#orders" type="button" role="tab" aria-controls="orders" aria-selected="false">
            🧾 Orders
        </button>
    </li>
                <!-- Add this inside your nav-tabs -->
<li class="nav-item" role="presentation">
    <button class="nav-link" id="reviews-tab" data-bs-toggle="tab" data-bs-target="#reviews" type="button" role="tab" aria-controls="reviews" aria-selected="false">
        ⭐ Reviews
    </button>
</li>

            </ul>

            <div class="tab-content" id="adminTabsContent">
                <!-- Bookings -->
                <div class="tab-pane fade show active" id="bookings" role="tabpanel" aria-labelledby="bookings-tab">
                    <asp:GridView 
                        ID="GridViewBookings" 
                        runat="server" 
                        AutoGenerateColumns="False" 
                        CssClass="gridview table table-bordered table-hover mt-3"
                        GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Person" HeaderText="Persons" />
                            <asp:BoundField DataField="Date" HeaderText="Date" DataFormatString="{0:dd-MM-yyyy}" />
                        </Columns>
                    </asp:GridView>
                </div>

                <!-- Registered Users -->
                <div class="tab-pane fade" id="users" role="tabpanel" aria-labelledby="users-tab">
                    <asp:GridView 
                        ID="GridViewUsers" 
                        runat="server" 
                        AutoGenerateColumns="False" 
                        CssClass="gridview table table-bordered table-hover mt-3"
                        GridLines="None">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="User Name" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" />
                            <asp:BoundField DataField="Address" HeaderText="Address" />
                        </Columns>
                    </asp:GridView>
                </div>
                
   <!-- Orders -->
<div class="tab-pane fade" id="orders" role="tabpanel" aria-labelledby="orders-tab">
    <asp:GridView 
        ID="GridViewOrders" 
        runat="server" 
        AutoGenerateColumns="False" 
        CssClass="gridview table table-bordered table-hover mt-3"
        GridLines="None"
        EmptyDataText="No orders found.">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Order ID" />
            <asp:BoundField DataField="UserName" HeaderText="User Name" />
            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price (₹)" DataFormatString="{0:F2}" />
            <asp:BoundField DataField="Total" HeaderText="Total (₹)" DataFormatString="{0:F2}" />
            <asp:BoundField DataField="OrderDate" HeaderText="Order Date" DataFormatString="{0:dd-MM-yyyy HH:mm}" />
        </Columns>
    </asp:GridView>
</div>
                <!-- Reviews -->
<div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
    <asp:GridView 
        ID="GridViewReviews" 
        runat="server" 
        AutoGenerateColumns="False" 
        CssClass="gridview table table-bordered table-hover mt-3"
        GridLines="None"
        EmptyDataText="No reviews found."
        DataKeyNames="Id"
        OnRowDeleting="GridViewReviews_RowDeleting">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Review ID" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:TemplateField HeaderText="Rating">
                <ItemTemplate>
                    <%# new string('★', Convert.ToInt32(Eval("Rating"))) %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Comments" HeaderText="Comments" />
            <asp:BoundField DataField="ReviewDate" HeaderText="Date" DataFormatString="{0:dd-MM-yyyy}" />
            <asp:CommandField ShowDeleteButton="True" ButtonType="Button" DeleteText="🗑️ Delete" />
        </Columns>
    </asp:GridView>
</div>

</div>
            </div>
    </form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
