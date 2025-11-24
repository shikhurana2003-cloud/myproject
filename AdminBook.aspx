<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBook.aspx.cs" Inherits="CafeteriaManagement.AdminBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
@model List<CafeteriaManagement.Models.Booking>
@{
    ViewData["Title"] = "Admin Dashboard";
}

<div class="container mt-4">
    <h2 class="mb-4">📋 Booking Dashboard</h2>

    <p><strong>Total Bookings:</strong> @ViewBag.TotalBookings</p>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Persons</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            @if (Model.Count == 0)
            {
                <tr>
                    <td colspan="6" class="text-center text-muted">No bookings found.</td>
                </tr>
            }
            else
            {
                foreach (var item in Model)
                {
                    <tr>
                        <td>@item.Id</td>
                        <td>@item.Name</td>
                        <td>@item.Phone</td>
                        <td>@item.Email</td>
                        <td>@item.Person</td>
                        <td>@item.Date</td>
                    </tr>
                }
            }
        </tbody>
    </table>
</div>
