<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About2.aspx.cs" Inherits="Homepage1.About2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffe6e6; /* Light pink background */
            margin: 0;
            padding: 0;
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
               top: 13px; /* Adjusted to position the icon a little lower */
          }

        main {
            padding: 20px;
            background-color: #fff; /* White background for main content */
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #b30000; /* Dark red color for the page title */
            font-size: 28px;
            margin-bottom: 10px;
        }

        h3 {
            color: #ff4d4d; /* Bright red color for the subheading */
            font-size: 22px;
            margin-bottom: 15px;
            line-height: 1.6;
        }

        p {
            font-size: 16px;
            color: #ff4d4d; /* Bright red color for paragraph text */
            margin-top: 10px;
            line-height: 1.8;
        }

        strong {
            color: #b30000; /* Dark red color for strong text */
        }

        /* Optional: Add some spacing between sections */
        .about-section {
            margin-bottom: 20px;
        }
    </style>
        <form id="form1" runat="server">
    <span class="hamburger" onclick="openSidebar()">&#9776;</span>

<!-- Main Content -->
<div class="main-content">
    <!-- Navbar -->
    <div class="navbar">
        <h1>&nbsp;&nbsp; GLANCE</h1>
        <div>
            <a href="Homepage1.aspx">Home</a>
            <a href="Login part.aspx">Login</a>
            <a href="color.aspx">Color Theory</a>
            <a href="Concern.aspx">Your Concern</a>
            <a href="Contact2.aspx">Contact</a>
            <a href="AppointmentBook.aspx">Book Appointment</a>
        </div>
    </div>
    </div>

    <main aria-labelledby="About">
        <h2 id="About"><%: Title %>ABOUT US</h2>
        
        <div class="about-section">
            <h3>Glance Salon & Spa is an initiative of Deepa Bishwakarma, a well-known Professional Hair Stylist and Makeup Artist in Bangalore. Her dream is to provide better service for her customers and make them look glamorous and gorgeous.</h3>
        </div>

        <div class="about-section">
            <p>Glance Salon & Spa was founded by Deepa Bishwakarma and co-founded by Prathab Menoo. The salon first started in Koramangala near Mangala Kalyana Mantapa and is spreading the best service in the Koramangala area.</p>
        </div>
    </main>
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




