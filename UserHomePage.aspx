<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="CafeteriaManagement.UserHomePage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .heading_container a.btn {
  font-weight: 600;
  border-radius: 25px;
  padding: 8px 18px;
  transition: all 0.3s ease;
}

.heading_container a.btn:hover {
  background-color: #ffb703;
  color: #fff;
  transform: translateY(-2px);
}
    </style>
</head>
<body>
   
</body>
</html>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="">

  <title> ANDAAZ RASOI CAFE  </title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

</head>

<body>
            <form id="form1" runat="server">

  <div class="hero_area">
    <div class="bg-box">
      <img src="images/front.jpg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="UserHomePage.aspx">
            <span>
             ANDAAZ RASOI CAFE   
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item active">
                <a class="nav-link" href="UserHomePage.aspx">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="menu.aspx">Menu</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="UserAbout.aspx">About</a>
              </li>
                 <li class="nav-item">
                <a class="nav-link" href="BookTablePage.aspx">BookTable</a>
                </li>
      
            </ul>

             <div class="user_option">
  <a href="" class="user_link">
    <i class="fa fa-user" aria-hidden="true"></i>
  </a>             
 <a href="EditProfilePage.aspx" class="order_online">Edit Profile</a>                          
</div> 
<asp:Button ID="btnLogOut" runat="server" Text="LogOut" CssClass="btn btn-primary" OnClick="btnLogOut_Click"/>

          
          </div>
              
        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Indian Food Restaurant
                    </h1>
                    <p>
Under the golden glow of hanging lights, the café became a place where time slowed down, and every shared cup felt like a story unfolding.                    </p>
                   <div class="btn-box">
   <a href="menu.aspx" class="btn1">
     Order Now
   </a>
 </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Indian Food Restaurant
                    </h1>
                    <p>
Under the golden glow of hanging lights, the café became a place where time slowed down, and every shared cup felt like a story unfolding.                    </p>
                    <div class="btn-box">
                      <a href="menu.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Indian Food Restaurant
                    </h1>
                    <p>
Under the golden glow of hanging lights, the café became a place where time slowed down, and every shared cup felt like a story unfolding.                    </p>
                    <div class="btn-box">
                      <a href="menu.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>

  <!-- offer section -->

 

  <!-- end offer section -->

  <!-- food section -->

  <section class="food_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          GALLERY
        </h2>
      </div>

      

      <div class="filters-content">
        <div class="row grid">
          <div class="col-sm-6 col-lg-4 all pizza">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/front.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Front Cafe View
                  </h5>
                  <p>
The café’s façade was clean and minimal, with tall glass panels, soft yellow lights, and bold white letters spelling its name. A few outdoor tables lined the entrance, where metal chairs and tiny succulents completed the picture-perfect vibe.                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all burger">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/res1.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Night Sitting View
                  </h5>
                  <p>
Neon reflections glimmered on the glass front of the café as cars rolled by in the distance. A soft haze from the espresso machine fogged the window,tempted by the promise of warmth and caffeine in a sleepless city.                  </p>
                  
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all pizza">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/roof.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Roof Cafe View
                  </h5>
                  <p>
The rooftop café rose above the city like a glass-framed lounge in the sky. Sleek railings wrapped around the edge, unobstructed view of the glowing skyline.Minimal décor and stylish metal chairs created a clean, elegant look.                  </p>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all pasta">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/chef.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                Our Chefs  
                  </h5>
                  <p>
The chef moved with practiced precision, his hands steady and his eyes sharp. Between the rising steam and the glow of kitchen lights, he worked like an artist, turning fresh ingredients into plates that spoke louder than words.                  </p>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all fries">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/coffeee.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Cafeteria
                  </h5>
                  <p>
Freshly brewed coffee releases its rich, earthy aroma the moment it’s poured — warm, bold, and comforting.Every cup feels like a slow, indulgent moment, wrapping you in its fragrance and flavor, one blissful sip at a time.                  </p>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all pizza">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/f2.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Our Special Thali
                  </h5>
                  <p>
A wholesome platter featuring aromatic curries, fragrant basmati rice, soft phulkas, crispy papad, fresh salad, and a signature dessert — a complete and flavorful meal crafted to satisfy every craving.Every bite bursts with aroma and spice.

                  </p>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all burger">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/res.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Sitting Hall
                  </h5>
                  <p>
Neon reflections glimmered on the glass front of the café as cars rolled by in the distance. A soft haze from the espresso machine fogged the window,tempted by the promise of warmth and caffeine in a sleepless city.                  </p>
                  </p>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all burger">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/food.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Our Food
                  </h5>
                  <p>
Our food is crafted with care, using fresh ingredients, bold flavors, and authentic recipes passed down with love. Every dish is prepared to delight the senses — rich in aroma, vibrant in color, and balanced in taste.                  </p>
                 
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 all pasta">
            <div class="box">
              <div>
                <div class="img-box">
                  <img src="images/art.jpg" alt="">
                </div>
                <div class="detail-box">
                  <h5>
                    Artistic Structure
                  </h5>
                  <p>
The space rises with quiet elegance, where clean lines meet warm textures. Soft golden lights wash over wood and stone, creating gentle shadows that breathe life into every corner. Glass panels open the room to the sky.                  </p>
                 
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="btn-box">
        
      </div>
    </div>
  </section>

  <!-- end food section -->
    <!-- book section -->
<section class="book_section layout_padding">
  <div class="container">
    <div class="heading_container">
      <h2>
        Book A Table
      </h2>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="form_container">
            <div>
              <asp:TextBox ID="txtName"  runat="server" class="form-control" placeholder="Your Name" ></asp:TextBox>
            </div>
            <div>
              <asp:TextBox ID="txtPhone"  runat="server" class="form-control" placeholder="Your Mobile" ></asp:TextBox>
            </div>
              <div>
              <asp:TextBox ID="txtEmail"  runat="server" class="form-control" placeholder="Your Email" ></asp:TextBox>
            </div>
            <div>
            <asp:DropDownList ID="ddlPerson" runat="server" CssClass="form-control nice-select wide">
              <asp:ListItem Text="How many persons?" Value="" />
              <asp:ListItem Text="2" Value="2" />
              <asp:ListItem Text="3" Value="3" />
              <asp:ListItem Text="4" Value="4" />
              <asp:ListItem Text="5" Value="5" />
            </asp:DropDownList>
          </div>
          <div>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
          </div>
          <div class="btn_box">
            <asp:Button ID="btnBook" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="btnBook_Click" />
          </div>
    
          </form>
        </div>
      </div>
      <div class="col-md-6">
        <div class="map_container ">
          <div id="googleMap"></div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- end book section -->

  <section class="about_section layout_padding">
    <div class="container  ">

      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="images/food.jpg" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                We Are Andaaz
              </h2>
            </div>
            <p>
              At our restaurant, we believe food is more than a meal — it is emotion, culture, and connection. With a passion for authentic flavors and a commitment to quality, we craft dishes that bring comfort, joy, and unforgettable taste to your table. Every recipe is prepared with fresh ingredients, balanced spices, and the chef’s personal care, ensuring that each bite carries warmth and richness.

Our space is designed to help you unwind — welcoming interiors, pleasant music, and a calm ambiance that sets the stage for conversations, celebrations, and beautiful memories. Whether you're sharing laughter with friends, spending time with family, or enjoying a quiet moment to yourself, we aim to make every visit special.

We don’t just serve food — we serve happiness, hospitality, and a dining experience you’ll return to again and again.
            </p>
           
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

  

  <!-- client section -->

  <section class="client_section layout_padding-bottom">
    <div class="container">
     <div class="heading_container heading_center psudo_white_primary mb_45 d-flex justify-content-between align-items-center flex-wrap">
  <h2 class="mb-0">
    What Says Our Customers
  </h2>
         <br />
         <br />
  <a href="ReviewPage.aspx" class="btn btn-outline-warning btn-sm mt-2 mt-md-0">
    ⭐ Leave a Review
  </a>
</div>

      <div class="carousel-wrap row ">
        <div class="owl-carousel client_owl-carousel">
          <div class="item">
            <div class="box">
              <div class="detail-box">
                <p>
“Loved the rooftop vibe and the delicious coffee! The view, music, and lighting created the perfect mood. Friendly service, quick delivery, and great presentation. Definitely recommending this place to friends!”                </p>
                <h6>
Shikha                </h6>
                <p>
Haryana                </p>
              </div>
              <div class="img-box">
                <img src="images/me1.jpeg" alt="" class="box-img">
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box">
              <div class="detail-box">
                <p>
Such a wonderful experience! The ambience is cozy, the food is full of flavor, and the staff makes you feel truly welcome. Every dish tasted fresh and authentic, especially the special thali. I’ve already decided—this is going to be my weekend spot!”                </p>
                <h6>
Shikha Rana                </h6>
                <p>
Chandigarh                </p>
              </div>
              <div class="img-box">
                <img src="images/me.jpeg" alt="" class="box-img">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end client section -->

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
      <div class="footer-info">
        <p>
          &copy; <span id="displayYear"></span> 
          <a href="https://html.design/"></a><br><br>
          &copy; <span id="displayYear"></span> 
          <a href="https://themewagon.com/" target="_blank"</a>
        </p>
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
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
  </script>
  <!-- End Google Map -->

</body>

</html>
