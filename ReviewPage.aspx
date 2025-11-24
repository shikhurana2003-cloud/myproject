<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReviewPage.aspx.cs" Inherits="CafeteriaManagement.ReviewPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Customer Review - Cafeteria</title>
        <style>
        body {
            background: linear-gradient(135deg, #f5f7fa, #e4ecf7);
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
        }
        .review-box {
            background: white;
            border-radius: 15px;
            padding: 40px;
            max-width: 600px;
            margin: 60px auto;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #007bff;
            text-align: center;
            margin-bottom: 25px;
        }

        /* --- STAR RATING --- */
        .star-rating {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 15px 0 5px;
            cursor: pointer;
        }
        .star {
            font-size: 2.5rem;
            color: #ccc;
            transition: transform 0.2s, color 0.3s;
        }
        .star:hover {
            transform: scale(1.2);
        }
        .star.active {
            color: #ffc107;
            transform: scale(1.1);
        }
        .rating-text {
            text-align: center;
            font-weight: 500;
            color: #555;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            transition: background 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  
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

  <title>  ANOKHI RASOI CAFE  </title>

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

<body class="sub_page">


  <div class="hero_area">
    <div class="bg-box">
      <img src="images/hero-bg.jpg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="UserHomePage.aspx">
            <span>
            ANOKHI RASOI CAFE 
            </span>
          </a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class=""> </span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav  mx-auto ">
              <li class="nav-item ">
                <a class="nav-link" href="UserHomePage.aspx">Home </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="menu.aspx">Menu</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="UserAbout.aspx">About <span class="sr-only">(current)</span> </a>
              </li>
              <li class="nav-item active">
   <a class="nav-link" href="BookTablePage.aspx">Book Table <span class="sr-only">(current)</span> </a>
 </li>
            </ul>
        
             <div class="user_option">
  <a href="" class="user_link">
    <i class="fa fa-user" aria-hidden="true"></i>
  </a>             
 <a href="EditProfilePage.aspx" class="order_online">Edit Profile</a>                          
          </div>
        <form id="form1" runat="server">
<asp:Button ID="btnLogOut" runat="server" Text="LogOut" CssClass="btn btn-primary" OnClick="btnLogOut_Click"/>

        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>

   

        <div class="review-box">
            <h2>✨ Leave a Review</h2>

            <div class="mb-3">
                <label class="form-label">Your Name</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
            </div>

            <label class="form-label d-block text-center">Your Rating</label>
            <div class="star-rating" id="stars">
                <span class="star" data-value="1">★</span>
                <span class="star" data-value="2">★</span>
                <span class="star" data-value="3">★</span>
                <span class="star" data-value="4">★</span>
                <span class="star" data-value="5">★</span>
            </div>
            <div id="ratingLabel" class="rating-text">Select a rating</div>
            <asp:HiddenField ID="hfRating" runat="server" />

            <div class="mb-3 mt-3">
                <label class="form-label">Your Comments</label>
                <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Write your feedback here..."></asp:TextBox>
            </div>

            <div class="text-center mt-3">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Review" CssClass="btn btn-primary px-4" OnClick="btnSubmit_Click" />
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3 d-block text-center"></asp:Label>
        </div>
    </form>

    <script>
        const stars = document.querySelectorAll(".star");
        const ratingText = document.getElementById("ratingLabel");
        const hiddenField = document.getElementById("<%= hfRating.ClientID %>");
        let selected = 0;

        stars.forEach(star => {
            star.addEventListener("mouseover", () => {
                highlightStars(star.dataset.value);
            });
            star.addEventListener("mouseout", () => {
                highlightStars(selected);
            });
            star.addEventListener("click", () => {
                selected = star.dataset.value;
                hiddenField.value = selected;
                ratingText.textContent = `You rated ${selected} star${selected > 1 ? 's' : ''} ⭐`;
                ratingText.style.color = "#007bff";
                highlightStars(selected);
            });
        });

        function highlightStars(rating) {
            stars.forEach(star => {
                star.classList.toggle("active", star.dataset.value <= rating);
            });
        }
    </script>
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
