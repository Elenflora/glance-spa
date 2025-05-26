<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="color.aspx.cs" Inherits="Homepage1.color" %>


<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            text-align: center;
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
               left: 20px; /* Positioned to the left of GLANCE title */
               top: 20px; /* Adjusted to position the icon a little lower */
          }

        .header {
            border: 3px solid #a41515;
            display: inline-block;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
            margin: 0 auto;
        }

        .header h1 {
            background-color: #a41515;
            color: white;
            padding: 15px 30px;
            margin: 0;
            display: inline-block;
            border: 3px solid #a41515;
        }

        .content {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .row {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .video-container {
            width: 100%;
        }

        .video-container video {
            width: 100%;
            height: auto;
            border: 3px solid #a41515;
            pointer-events: none; /* Disables clicking */
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
        }

        .product-card {
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 10px;
            text-align: center;
        }

        .product-card img {
            max-width: 100%;
            height: auto;
        }

        .footer {
            margin-top: 30px;
            padding: 10px;
            background-color: #a41515;
            color: white;
            font-size: 16px;
            text-align: center;
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
            <h1>GLANCE</h1>
            <div>
                
                <a href="Homepage1.aspx">Home</a>
                <a href="Login part.aspx">Login</a>
                <a href="Concern.aspx">Your Concern</a>
                <a href="About2.aspx">About</a>
                <a href="Contact2.aspx">Contact</a>
                <a href="AppointmentBook.aspx">Book Appointment</a>
            </div>
        </div>

            
    <div class="header">
        <h1>Color Theory</h1>
    </div>

    <div class="content">
        <div class="row">
            <div class="video-container">
                <video autoplay loop muted>
                    <source src="color1.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
            <div class="video-container">
                <video autoplay loop muted>
                    <source src="Color wheel.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
        </div>
        <div class="row">
            <div class="video-container" style="width: 50%;">
                <video autoplay loop muted>
                    <source src="cool tone.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
        </div>
        <div class="row">
            <div class="video-container">
                <video autoplay loop muted>
                    <source src="neutral tone.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
            <div class="video-container">
                <video autoplay loop muted>
                    <source src="warm tone.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>
            </div>
        </div>
    </div>

    <div class="product-grid">
        <div class="product-card">
            <img src="color1.jpg" alt="product image" />
            <h4>color combo1</h4>
        </div>
        <div class="product-card">
            <img src="color2.jpg" alt="Product Image" />
            <h4>color combo2</h4>
        </div>
        <div class="product-card">
            <img src="color3.jpg" alt="Product Image" />
            <h4>color combo3</h4>
        </div>
        <div class="product-card">
            <img src="color4.jpg" alt="Product Image" />
            <h4>color combo4</h4>
        </div>
        <div class="product-card">
    <img src="col9.jpg" alt="Product Image" />
    <h4>color combo4</h4>
</div>
                <div class="product-card">
    <img src="col5.jpg" alt="Product Image" />
    <h4>color combo4</h4>
</div>
    </div>

    <div class="footer">
        All Rights Reserved 2025
    </div>
    </form>
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