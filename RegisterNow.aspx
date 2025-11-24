<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterNow.aspx.cs" Inherits="CafeteriaManagement.RegisterNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

form{
margin-left:5%;
margin-right:35%;
padding-bottom:10px;
}
div{

padding:5px;
}
.btn-login{
margin-left:55%;
 
}
.btn-cancel{
margin-left:60px;
}
.checkbox{
margin-left:55%;
font-size:1.5rem;
}
#Label1{
margin-left:2%;
}
</style>
</head>
<body>
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <!-- Site Metas -->
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="images/favicon.png" type="">

  <title>  ANDAAZ RASOI CAFE  </title>
  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous">
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet">

<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/62/8d/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/62/8d/util.js"></script></head>


  <div class="hero_area">
    <div class="bg-box">
      <img src="images/res1.jpg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.html">
            <span>
            ANDAAZ RASOI CAFE 
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item">
                <a class="nav-link" href="MainHomePage.aspx">Home </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="MenuPage.aspx">Menu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="AboutPage.aspx">About</a>
        
            </ul>
            
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>
      <!-- Login + Register Form -->
    <form id="form2" runat="server">

        <!-- Required for validation -->
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!-- REGISTER SECTION -->
        <section class="book_section layout_padding">
            <div class="container">
                <div class="heading_container">
                    <h2>Register Here</h2>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form_container">

                            <div>
                                <asp:TextBox ID="txtName" runat="server"
                                    CssClass="form-control" placeholder="Your Name" Width="1153px"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="rfvName" runat="server"
                                    ControlToValidate="txtName"
                                    ErrorMessage="Name is required!" ForeColor="Red" />
                            </div>
                            <div>
                                <asp:TextBox ID="txtPhone" runat="server"
                                    CssClass="form-control" placeholder="Phone Number" Width="1158px"></asp:TextBox>

                             <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                                    ControlToValidate="txtPhone"
                                    ErrorMessage="Phone is required!" ForeColor="Red" />

                                <asp:RegularExpressionValidator ID="revPhone" runat="server"
                                    ControlToValidate="txtPhone"
                                    ValidationExpression="^[0-9]{10}$"
                                    ErrorMessage="Invalid phone number!" ForeColor="Red" />
                            </div>
                            <div>
                                <asp:TextBox ID="txtEmail" runat="server"
                                    CssClass="form-control" placeholder="Your Email" Width="1155px"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                    ControlToValidate="txtEmail"
                                    ErrorMessage="Email is required!" ForeColor="Red" />

                                <asp:RegularExpressionValidator
                                    ID="revEmail" runat="server"
                                    ControlToValidate="txtEmail"
                                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                                    ErrorMessage="Invalid email!" ForeColor="Red" />
                            </div>
                            <div>
                                <asp:TextBox ID="txtPassword" runat="server"
                                    CssClass="form-control" placeholder="Password"
                                    TextMode="Password" Width="1163px"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                    ControlToValidate="txtPassword"
                                    ErrorMessage="Password is required!" ForeColor="Red" />
                            </div>
                            <div>
                                <asp:TextBox ID="txtAddress" runat="server"
                                    CssClass="form-control" placeholder="Address" Width="1165px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                                    ControlToValidate="txtAddress"
                                    ErrorMessage="Address is required!" ForeColor="Red" />
                            </div>
                            <div>
                                <asp:Button ID="btnRegister" runat="server" Text="Register Now"
                                    CssClass="btn btn-primary"
                                    OnClick="btnRegister_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
   <!-- jQuery -->
    <script src="js/jquery-3.4.1.min.js"></script>

    <!-- bootstrap -->
    <script src="js/bootstrap.js"></script>

    <!-- slider -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>-

  <!-- end book section -->

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
</body>
</html>
