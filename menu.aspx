<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="CafeteriaManagement.menu" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
      <!-- Basic -->
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

<head runat="server">
  <title>ANOKHI RASOI CAFE - Menu</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <link rel="stylesheet" href="css/style.css" />
</head>
<body class="sub_page">
               <form id="form1" runat="server">
     <div class="hero_area">
   <div class="bg-box">
     <img src="images/hero-bg.jpg" alt="">
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
               <a class="nav-link" href="UserHomePage.aspx">Home </a>
             </li>
             <li class="nav-item active">
               <a class="nav-link" href="menu.aspx">Menu <span class="sr-only">(current)</span> </a>
             </li>
             <li class="nav-item">
               <a class="nav-link" href="UserAbout.aspx">About</a>
             </li> 
                <li class="nav-item active">
   <a class="nav-link" href="BookTablePage.aspx">Book Table <span class="sr-only">(current)</span> </a>
 </li>
           </ul>
                      <div class="user_option">
  <a href="EditProfilePage.aspx" class="user_link">
    <i class="fa fa-user" aria-hidden="true"></i>
  </a>             
 <a href="EditProfilePage.aspx" class="order_online">Edit Profile</a>                          
</div> 
          
          </div>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
   
     <a href="AddToCart.aspx" class="btn btn-success">
       Cart (<asp:Label ID="lblCartCount" runat="server" Text="0"></asp:Label>)
     </a>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Button ID="btnLogOut" runat="server" Text="LogOut" CssClass="btn btn-primary" OnClick="btnLogOut_Click"/>

 </nav>
       
     </div>
   </header>
   <!-- end header section -->
 </div>
  <div class="container mt-4">
    <h2 class="text-center mb-4">Our Menu</h2>
    <div class="row">
        <!-- Example Menu Item 0 -->
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img src="images/paratha.png" class="card-img-top" alt="Aloo Paratha" />
            <div class="card-body text-center">
              <h5 class="card-title">Aloo Paratha</h5>
              <p class="card-text">Paratha 2, Chutney, Chai 1</p>
              <p><strong>₹50</strong></p>
              <asp:Button ID="btnAddParatha" runat="server" Text="Add to Cart"
                          CssClass="btn btn-primary"
                          CommandArgument="Aloo Paratha,50"
                          OnClick="AddToCart_Click" />
            </div>
          </div>
        </div>
           <!-- Example Menu Item 1 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/paner.jpg" class="card-img-top" alt="Kadahi Paneer" />
     <div class="card-body text-center">
       <h5 class="card-title">Kadahi Paneer</h5>
       <p class="card-text"> Kadahi Paneer</p>
       <p><strong>₹120</strong></p>
       <asp:Button ID="Button1" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Kadahi Paneer,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
           <!-- Example Menu Item 2 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/idli.jpg" class="card-img-top" alt="Idli" />
     <div class="card-body text-center">
       <h5 class="card-title">Idli</h5>
       <p class="card-text">Idli 2, Sambhar 1, Salad </p>
       <p><strong>₹150</strong></p>
       <asp:Button ID="Button4" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Idli,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>

 <!-- Example Menu Item 3 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/mausa.jpg" class="card-img-top" alt="Samausa" />
     <div class="card-body text-center">
       <h5 class="card-title">Samausa</h5>
       <p class="card-text">Samusa 1</p>
       <p><strong>₹20</strong></p>
       <asp:Button ID="Button2" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Samusa,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
 <!-- Example Menu Item 4 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/dosa.jpg" class="card-img-top" alt="Dosa" />
     <div class="card-body text-center">
       <h5 class="card-title">Dosa</h5>
       <p class="card-text">Masala Dosa 1, Sambhar , Chutney 2</p>
       <p><strong>₹170</strong></p>
       <asp:Button ID="Button3" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Dosa,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
           <!-- Example Menu Item 5 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/pav.jpg" class="card-img-top" alt="Pav Bhaji" />
     <div class="card-body text-center">
       <h5 class="card-title">Pav Bhaji</h5>
       <p class="card-text">Pav 2, Bhaji , Salad</p>
       <p><strong>₹100</strong></p>
       <asp:Button ID="Button5" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Pav Bhaji,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
           <!-- Example Menu Item 6 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/rice.jpg" class="card-img-top" alt="Rice" />
     <div class="card-body text-center">
       <h5 class="card-title">Rice</h5>
       <p class="card-text">Rice 1Bowl</p>
       <p><strong>₹40</strong></p>
       <asp:Button ID="Button9" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Rice,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
           <!-- Example Menu Item 7 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/puri1.jpg" class="card-img-top" alt="Aloo Paratha" />
     <div class="card-body text-center">
       <h5 class="card-title">Puri Chhole</h5>
       <p class="card-text">Puri 2 Chhole</p>
       <p><strong>₹80</strong></p>
       <asp:Button ID="Button6" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Aloo Paratha,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
 <!-- Example Menu Item 8 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/dal.jpg" class="card-img-top" alt="Dal Makhni" />
     <div class="card-body text-center">
       <h5 class="card-title">Dal Makhni</h5>
       <p class="card-text">Dal Makhni</p>
       <p><strong>₹100</strong></p>
       <asp:Button ID="Button7" runat="server" Text="Add to Cart" CssClass="btn btn-primary"
                   CommandArgument="Dal Makhni,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
 <!-- Example Menu Item 9 -->
 <div class="col-md-4">
   <div class="card mb-4 shadow-sm">
     <img src="images/roti1.jpg" class="card-img-top" alt="Roti" />
     <div class="card-body text-center">
       <h5 class="card-title">Roti</h5>
       <p class="card-text">Roti 2</p>
       <p><strong>₹20</strong></p>
       <asp:Button ID="Button8" runat="server" Text="Add to Cart"
                   CssClass="btn btn-primary"
                   CommandArgument="Roti,50"
                   OnClick="AddToCart_Click" />
     </div>
   </div>
 </div>
        <!-- Example Menu Item 10 -->
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img src="images/kadhi2.jpg" class="card-img-top" alt="Karhi" />
            <div class="card-body text-center">
              <h5 class="card-title">Karhi</h5>
              <p class="card-text">Karhi 1Bowl</p>
              <p><strong>₹70</strong></p>
              <asp:Button ID="btnAddPuri" runat="server" Text="Add to Cart"
                          CssClass="btn btn-primary"
                          CommandArgument="Karhi,100"
                          OnClick="AddToCart_Click" />
            </div>
          </div>
        </div>
        <!-- Example Menu Item 11 -->
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <img src="images/puri1.jpg" class="card-img-top" alt="Special Thali" />
            <div class="card-body text-center">
              <h5 class="card-title">Special Thali</h5>
              <p class="card-text">Paneer, Dal, Chapati, Rice, Salad</p>
              <p><strong>₹250</strong></p>
              <asp:Button ID="btnAddThali" runat="server" Text="Add to Cart"
                          CssClass="btn btn-primary"
                          CommandArgument="Special Thali,250"
                          OnClick="AddToCart_Click" />
            </div>
          </div>
        </div>
      </div>
      <div class="text-center mt-4">
        <a href="AddToCart.aspx" class="btn btn-success">Go to Cart</a>
      </div>
    </div>
  </form>
<br />
    <br />
    <br />
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
                 Call +91 1234567890
               </span>
             </a>
             <a href="">
               <i class="fa fa-envelope" aria-hidden="true"></i>
               <span>
                 shikha21@gmail.com
               </span>
             </a>
           </div>
         </div>
       </div>
       <div class="col-md-4 footer-col">
         <div class="footer_detail">
           <a href="" class="footer-logo">
             Andaaaz
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
