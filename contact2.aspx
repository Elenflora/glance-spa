<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact2.aspx.cs" Inherits="Homepage1.contact2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
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
               left: 19px; /* Positioned to the left of GLANCE title */
               top: 14px; /* Adjusted to position the icon a little lower */
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
        }

        address {
            font-style: normal;
            color: #ff4d4d; /* Bright red for the address text */
            font-size: 16px;
        }

        abbr[title="Phone"] {
            text-decoration: none;
            font-weight: bold;
            color: #b30000; /* Dark red for the phone label */
        }

        a {
            color: #b30000; /* Dark red color for links */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: #ff4d4d; /* Bright red when hovering over links */
        }

        strong {
            color: #b30000; /* Dark red color for strong labels */
        }
    </style>
    
        <form id="form2" runat="server">
    <span class="hamburger" onclick="openSidebar()">&#9776;</span>

<!-- Main Content -->
<div class="main-content">
    <!-- Navbar -->
    <div class="navbar">
        <h1>&nbsp;&nbsp; GLANCE</h1>
        <div>
            <a href="Homepage1.aspx">Home</a>
            <a href="Login part.aspx">Login</a>
            <a href="Concern.aspx">Your Concern</a>
            <a href="color.aspx">Color Theory</a>
            <a href="About2.aspx">About</a>
            <a href="AppointmentBook.aspx">Book Appointment</a>
        </div>
    </div>
    </div>
    <main aria-labelledby="GlanceSalon&Spa">
        <h2 id="GlanceSalon&Spa"><%: Title %>.</h2>
        <h3>Contact Us</h3>
        <address>
            <strong>Address:</strong> 58, GM Arcade, Jyoti Nivas College Rd, 
            KHB Colony, 5th Block, Koramangala, 
            Bengaluru, Karnataka 560095<br />
            
            <strong>Phone:</strong> <abbr title="Phone">📞</abbr> 08971307997<br />

            <strong>Email:</strong> <abbr title="Email">✉️</abbr> 
            <a href="mailto:glancesalon&spa@gmail.com">glancesalon&spa@gmail.com</a>
        </address>
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


            