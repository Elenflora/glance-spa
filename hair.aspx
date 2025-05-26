<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hair.aspx.cs" Inherits="Homepage1.hair" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hair Services & Products</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff5f7;
            color: #333;
        }
                .navbar {
            background-color: #b30000; /* Dark red */
            color: #fff;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
       
        }

        .navbar h1 {
              margin: 0;
              font-size: 24px;
        }

        .navbar a {
               color: #fff;
               text-decoration: none;
               font-size: 16px;
               margin-left: 15px;
        }

        .navbar a:hover {
                text-decoration: underline;
              
        }

         /* Sidebar Styles */
         .sidebar {
                background-color: #b30000; /* Dark red */
                position: fixed;
                top: 0;
                left: -250px; /* Initially hidden off-screen */
                width: 250px;
                height: 100%;
                padding-top: 60px;
                transition: 0.3s; /* Slide effect */
                z-index: 1000;
          }

         .sidebar a {
                padding: 15px;
                text-decoration: none;
                color: white;
                display: block;
                font-size: 18px;
         }

         .sidebar a:hover {
                 background-color: #ff4d4d; /* Light red */
         }

          .sidebar .cancel-icon {
                 position: absolute;
                 top: 20px;
                 right: 20px;
                 font-size: 30px;
                 color: white;
                 cursor: pointer;
          }

/* Hamburger Icon Styles */
          .hamburger {
               display: block;
               font-size: 23px;
               color: white;
               cursor: pointer;
               position: absolute;
               left: 14px; /* Positioned to the left of GLANCE title */
               top: 13px; /* Adjusted to position the icon a little lower */
          }

        /* Slideshow Styles */
        .slideshow-container {
            width: 100%;
            height: 400px;
            position: relative;
            overflow: hidden;
        }

        .slide {
            display: none;
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .slideshow-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
        }
        .header {
    text-align: center;
    background-color: #ff4d4d;
    color: white;
    padding: 30px;
    font-size: 28px;
    font-weight: bold;
}

        /* Main Content */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            text-align: center;
        }

        h2 {
            font-weight: bold;
            color: #e6005c;
            font-size: 28px;
        }

        .popular-categories {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
        }

        .category {
            width: 200px;
            text-align: center;
            background: #ffebf0;
            padding: 15px;
            border-radius: 10px;
            transition: 0.3s;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .category:hover {
            transform: scale(1.05);
            background: #ffccdc;
        }

        .category img {
            width: 100%;
            border-radius: 10px;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 40px;
        }

        .product {
            border: 2px solid #e6005c;
            border-radius: 12px;
            padding: 15px;
            background: #fff;
            transition: 0.3s;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .product:hover {
            transform: scale(1.05);
            border-color: #b30047;
            background: #ffebf0;
        }

        .product img {
            width: 100%;
            border-radius: 10px;
        }

        .description {
            text-align: center;
            font-size: 18px;
            color: #e6005c;
            font-weight: bold;
            padding: 20px;
            background: #ffebf0;
            border-radius: 10px;
            margin-top: 30px;
        }
            .footer {
        background: #ff4d4d;
        color: white;
        text-align: center;
        padding: 20px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Sidebar Navigation -->
    <div class="sidebar" id="sidebar">
        <span class="cancel-icon" onclick="closeSidebar()">×</span>
      
        <a href="SkincareTips.aspx">SkinCareTips</a>
        
    </div>

    <!-- Hamburger Menu Icon -->
    <span class="hamburger" onclick="openSidebar()">&#9776;</span>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Navbar -->
        <div class="navbar">
            <h1>&nbsp;GLANCE</h1>
            <div>
                
                <a href="Homepage1.aspx">Home</a>
                <a href="Concern.aspx">Your Concern</a>
                <a href="color.aspx">Color Theory</a>
                <a href="About2.aspx">About</a>
                <a href="Contact2.aspx">Contact</a>
                <a href="AppointmentBook.aspx">Book Appointment</a>
            </div>
        </div>

            

    <!-- Slideshow -->
    <div class="slideshow-container">
        <div class="slide"><img src="simple.png" alt="Slide 1"></div>
        <div class="slide"><img src="good.png" alt="Slide 2"></div>
        <div class="slide"><img src="cut.png" alt="Slide 3"></div>
    </div>

   
    

    <!-- Hair Service Categories -->
    <div class="container">
        </div>
    <div class="header">Hair Service</div>

        <div class="popular-categories">
            <div class="category"><img src="hairser.png" alt="Hairspa"><p>Hairspa</p></div>
            <div class="category"><img src="haircut.png" alt="Haircut"><p>Haircut</p></div>
            <div class="category"><img src="style.png" alt="Hairstyle"><p>Hairstyles</p></div>
            <div class="category"><img src="colorone.png" alt="Haircolor"><p>Haircolor</p></div>
        </div>
   

    <div class="container">
    <h2>Explore Your Styles </h2>
    <p class="description">
        ✨ Explore our latest hair services and products designed to give you a fresh, stylish look.  
        Whether you're looking for a trendy haircut, a vibrant hair color transformation, or a  
        nourishing hair spa treatment, we've got you covered.  
        💇‍♀️ Our expert stylists use high-quality products to ensure your hair stays healthy and beautiful.
    </p>
</div>

                <!-- Video Section -->
            <div style="text-align: center;">
    <video autoplay muted loop width="1000" height="500" style="display: block; margin: auto; object-fit: cover;">
        <source src="hairca.mp4" type="video/mp4" />
    </video>
</div>


    <!-- Trending Products -->
    <div class="container">
        <h2>Get your style </h2>
        <div class="product-grid">
            <div class="product"><img src="hair2.png" alt="Product 1"></div>
            <div class="product"><img src="haicu.png" alt="Product 2"></div>
            <div class="product"><img src="style2.png" alt="Product 3"></div>
            <div class="product"><img src="colorthree.png" alt="Product 4"></div>
        </div>
    </div>
    <div class="footer">
    &copy; 2025 Luxury Hair Care. All Rights Reserved.
</div>
        </form>

    <script>
        let slideIndex = 0;
        showSlides();

        function showSlides() {
            let slides = document.querySelectorAll('.slide');
            slides.forEach(slide => slide.style.display = 'none');
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            slides[slideIndex - 1].style.display = 'block';
            setTimeout(showSlides, 3000);
        }
    </script>
     <script>
         // Function to open the sidebar
         function openSidebar() {
             document.getElementById("sidebar").style.left = "0"; // Slide-in effect
             document.querySelector(".hamburger").style.display = "none"; // Hide hamburger icon
         }

         // Function to close the sidebar
         function closeSidebar() {
             document.getElementById("sidebar").style.left = "-250px"; // Slide-out effect
             document.querySelector(".hamburger").style.display = "block"; // Show hamburger icon
         }
     </script>

</body>
</html>
