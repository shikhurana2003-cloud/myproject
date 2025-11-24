<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BillPage.aspx.cs" Inherits="CafeteriaManagement.BillPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bill Page</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 50px;
            background-color: #fafafa;
        }
        .bill-container {
            width: 70%;
            margin: auto;
            background: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #0078D7;
            color: white;
        }
        .total-row td {
            font-weight: bold;
            font-size: 18px;
        }
        .btn {
            background-color: #0078D7;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #005fa3;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            color: gray;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bill-container">
            <h2>Cafeteria Bill Receipt</h2>
            <hr />
            <p><b>Customer:</b> <asp:Label ID="lblUserName" runat="server" /></p>
            <p><b>Order Date:</b> <asp:Label ID="lblDate" runat="server" /></p>
            <asp:GridView ID="gvBill" runat="server" AutoGenerateColumns="False" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Qty" />
                    <asp:BoundField DataField="Price" HeaderText="Price (₹)" DataFormatString="{0:N2}" />
                    <asp:BoundField DataField="Total" HeaderText="Total (₹)" DataFormatString="{0:N2}" />
                </Columns>
            </asp:GridView>

            <table>
                <tr class="total-row">
                    <td colspan="3" style="text-align:right;">Grand Total (₹):</td>
                    <td><asp:Label ID="lblGrandTotal" runat="server" /></td>
                </tr>
            </table>
            <div style="text-align:center; margin-top:20px;">
                <asp:Button ID="btnPrint" runat="server" CssClass="btn" Text="Print Bill" OnClientClick="window.print(); return false;" />
                <asp:Button ID="btnHome" runat="server" CssClass="btn" Text="Back to Menu" PostBackUrl="~/menu.aspx" />
            </div>
        </div>
        <div class="footer">
            Thank you for visiting our cafeteria!
        </div>
    </form>
</body>
</html>
