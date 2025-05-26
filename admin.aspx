<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Homepage1.admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffe6e6; /* Light pink background */
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
            font-size: 30px;
            color: white;
            cursor: pointer;
            position: absolute;
            left: 20px; /* Positioned to the left of GLANCE title */
            top: 30px; /* Adjusted to position the icon a little lower */
        }

        .main-content {
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s; /* Smooth transition when sidebar opens/closes */
        }

        .banner {
            text-align: center;
            background: #ffcccc; /* Light red */
            padding: 50px 20px;
        }

        .banner h1 {
            font-size: 36px;
            color: #b30000; /* Dark red */
            margin-bottom: 10px;
        }

        .banner p {
            font-size: 18px;
            color: #ff4d4d; /* Bright red */
        }

        /* Categories Section */
        .categories {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 30px 20px;
        }

        .category {
            background: #fff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 200px;
        }

        .category img {
            width: 100%;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .category h4 {
            font-size: 18px;
            color: #b30000; /* Dark red */
        }

        .category p {
            font-size: 14px;
            color: #ff4d4d; /* Bright red */
        }

        /* Category Link Styles */
        .categories a {
            text-decoration: none; /* Remove underline */
            color: black; /* Set the text color to black */
        }

        .categories a:hover {
            color: black; /* Ensure the text color stays black on hover */
        }

        .footer {
            background: #b30000; /* Dark red */
            color: #fff;
            text-align: center;
            padding: 15px;
            margin-top: 30px;
        }

        .footer p {
            margin: 0;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Sidebar Navigation -->
        <div class="sidebar" id="sidebar">
            <span class="cancel-icon" onclick="closeSidebar()">×</span>
          
            <a href="Acne.aspx">Acne</a>
            <a href="oilyskin.aspx">Oilyskin</a>
            <a href="Dandruff.aspx">Dandruff</a>
            <a href="splitends.aspx">Splitends</a>
        </div>

        <!-- Hamburger Menu Icon -->
        <span class="hamburger" onclick="openSidebar()">&#9776;</span>

        <!-- Main Content -->
        <div class="main-content">
            <!-- Navbar -->
            <div class="navbar">
                <h1>GLANCE</h1>
                <div>
                    <a href="admin.aspx">Home</a>
                    <a href="Bookingappointment.aspx">Appoimtments</a>
                </div>
            </div>

            <!-- Video Section -->
            <div>
                <video controls width="1500" height="360">
                    <source src="salon.mp4" type="video/mp4" />
                </video>
            </div>

            <!-- Banner -->
            <div class="banner">
                <h1>Welcome to GLANCE</h1>
                <p>Explore the Best for your needs.</p>
            </div>

            <!-- Categories Section -->
            <div class="categories">
                <a href="https://localhost:44340/hair" class="category">
                    <img src="hair salon.png" alt="Category 1" />
                    <h3>Hair Salon</h3>
                    <p>Discover our premium range of products.</p>
                </a>
                <a href="https://localhost:44340/nail" class="category">
                    <img src="Nail.png" alt="Category 2" />
                    <h3>Nail Salon</h3>
                    <p>Find something new and exciting.</p>
                </a>
                <a href="https://localhost:44340/makeup" class="category">
                    <img src="Makeup.png" alt="Category 3" />
                    <h3>Bridal Services</h3>
                    <p>For your Bridal look needs.</p>
                </a>
                <a href="https://localhost:44340/skin" class="category">
                    <img src="Skincare.png" alt="Category 4" />
                    <h3>Skincare</h3>
                    <p>Enhance your natural beauty with our skincare products.</p>
                </a>
            </div>

            <!-- Footer -->
            <div class="footer">
                <p>&copy; 2024 GLANCE. All rights reserved.</p>

            </div>
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