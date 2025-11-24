<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoginPage.aspx.cs" Inherits="CafeteriaManagement.UserLoginPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>

    <!-- ✅ Your existing CSS links -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="shortcut icon" href="images/favicon.png" type="">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">

    <style>
        body {
            background: #ffffff; /* ✅ White background */
            font-family: Arial, sans-serif;
        }

        .login-area {
            display: flex;
            justify-content: center;
            padding: 60px 10px;
        }

        .login-container {
            background: #f8f8f8;
            padding: 40px;
            width: 380px;
            border-radius: 15px;
            border: 1px solid #dcdcdc;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.8); }
            to { opacity: 1; transform: scale(1); }
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #222;
            font-size: 28px;
        }

        .textbox {
            margin-bottom: 15px;
        }

        input[type="text"], input[type="password"] {
            width: 95%;
            padding: 12px;
            border: 1px solid #0066ff;
            border-radius: 8px;
            transition: 0.3s;
            font-size: 15px;
        }

        input:focus {
            border-color: #0044cc;
            box-shadow: 0px 0px 8px rgba(0, 68, 204, 0.6);
        }

        .btn {
            width: 48%;
            padding: 12px;
            border: none;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.25s;
        }

        .btn-login {
            background-color: #33cc33;
            color: white;
        }
        .btn-login:hover {
            background-color: #27a627;
        }

        .btn-cancel {
            background-color: #ff3333;
            color: white;
        }
        .btn-cancel:hover {
            background-color: #db2b2b;
        }

        .register-link {
            text-align: center;
            margin-top: 15px;
        }

        .register-link a {
            color: #0066FF;
            font-size: 18px;
            text-decoration: none;
        }

        .register-link a:hover {
            color: #003399;
            text-decoration: underline;
        }

    </style>
</head>

<body class="sub_page">

    <!-- ✅ HEADER (kept as-is) -->
    <div class="hero_area">
        <div class="bg-box">
            <img src="images/hero-bg.jpg" alt="">
        </div>

        <header class="header_section">
            <div class="container">
                <nav class="navbar navbar-expand-lg custom_nav-container ">
                    <a class="navbar-brand" href="index.html">
                        <span>ANDAAZ RASOI CAFE</span>
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class=""></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item"><a class="nav-link" href="MainHomePage.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="MenuPage.aspx">Menu</a></li>
                            <li class="nav-item"><a class="nav-link" href="AboutPage.aspx">About</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </header>
    </div>

    <!-- ✅ LOGIN SECTION -->
    <form id="form1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="login-area">
            <div class="login-container">

                <h2>User Login</h2>

                <div class="textbox">
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server"
ControlToValidate="TextBox1"
ErrorMessage="Username is required!" ForeColor="Red" />
                </div>

                <div class="textbox">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                    
                </div>

                <div style="display:flex; justify-content:space-between;">
                    <asp:Button CssClass="btn btn-login" ID="Button1"
                        runat="server" Text="Login" OnClick="Button1_Click" />

                    <asp:Button CssClass="btn btn-cancel" ID="Button2"
                        runat="server" Text="Cancel" OnClick="Button2_Click1" />
                </div>

                <div class="register-link">
                    <a href="RegisterNow.aspx">Register Now</a>
                </div>

            </div>
        </div>
    </form>

    <!-- ✅ FOOTER (kept as-is) -->
    <!-- footer section -->
 <footer class="footer_section">
   <div class="container">
     <div class="row">
       <div class="col-md-4 footer-col">
         <div class="footer_contact">
           <h4>
             Contact Us
           </h4>
           <div class="contact_link_box">
             <a href="">
               <i class="fa fa-map-marker" aria-hidden="true"></i>
               <span>
                 Location
               </span>
             </a>
             <a href="">
               <i class="fa fa-phone" aria-hidden="true"></i>
               <span>
                 Call +01 1234567890
               </span>
             </a>
             <a href="">
               <i class="fa fa-envelope" aria-hidden="true"></i>
               <span>
                 demo@gmail.com
               </span>
             </a>
           </div>
         </div>
       </div>
       <div class="col-md-4 footer-col">
         <div class="footer_detail">
           <a href="" class="footer-logo">
             Andaaz
           </a>
           <p>
             Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
           </p>
           <div class="footer_social">
             <a href="">
               <i class="fa fa-facebook" aria-hidden="true"></i>
             </a>
             <a href="">
               <i class="fa fa-twitter" aria-hidden="true"></i>
             </a>
             <a href="">
               <i class="fa fa-linkedin" aria-hidden="true"></i>
             </a>
             <a href="">
               <i class="fa fa-instagram" aria-hidden="true"></i>
             </a>
             <a href="">
               <i class="fa fa-pinterest" aria-hidden="true"></i>
             </a>
           </div>
         </div>
       </div>
       <div class="col-md-4 footer-col">
         <h4>
           Opening Hours
         </h4>
         <p>
           Everyday
         </p>
         <p>
           10.00 Am -10.00 Pm
         </p>
       </div>
     </div>
     
   </div>
 </footer>
 <!-- footer section -->

 <!-- jQery -->
 <script src="js/jquery-3.4.1.min.js"></script>

 <!-- popper js -->
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
 </script>
 <!-- bootstrap js -->
 <script src="js/bootstrap.js"></script>
 <!-- owl slider -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
 </script>
 <!-- isotope js -->
 <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
 <!-- nice select -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
 <!-- custom js -->
 <script src="js/custom.js"></script>
 <!-- Google Map -->
 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&amp;callback=myMap">
 </script>
 <!-- End Google Map -->
    <!-- ✅ Scripts -->
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.js"></script>

</body>
</html>
