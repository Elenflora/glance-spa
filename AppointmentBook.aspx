<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentBook.aspx.cs" Inherits="Homepage1.AppointmentBook" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Appointment</title>
    <style>
        /* Fullscreen Background Video */
        .video-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
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

        .video-container video {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            min-width: 100%;
            min-height: 100%;
            object-fit: cover;
            filter: brightness(50%);
        }

        /* Styling for the form */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: rgba(0, 0, 0, 0.5);
        }

        .appointment-form {
            background: white;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            position: relative;
            z-index: 1;
            top: 47px;
            left: 93px;
        }

        h3 {
            color: #b30000;
            margin-bottom: 15px;
        }

        .appointment-form input,
        .appointment-form select {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            background-color: white;
            color: black;
        }

        /* Styling the date and time pickers */
        input[type="date"],
        input[type="time"] {
            border: 1px solid #ff4d4d;
            background-color: #ffe6e6;
            color: #b30000;
        }

        input[type="date"]::-webkit-calendar-picker-indicator,
        input[type="time"]::-webkit-calendar-picker-indicator {
            filter: invert(20%) sepia(90%) saturate(500%) hue-rotate(330deg);
        }

        /* Time Picker and AM/PM Dropdown Styling */
        .time-container {
            display: flex;
            gap: 10px;
        }

        .time-container input {
            flex: 1;
        }

        /* Styling the "Book Now" button */
        .btn-book {
            background: linear-gradient(to right, #ff4d4d, #b30000);
            color: black;
            padding: 12px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            font-weight: bold;
            font-size: 16px;
            transition: 0.3s;
        }

        .btn-book:hover {
            background: linear-gradient(to right, #b30000, #ff4d4d);
            transform: scale(1.05);
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
    <span class="hamburger" onclick="openSidebar()">&#9776;</span>

<!-- Main Content -->
<div class="main-content">
    <!-- Navbar -->
    <div class="navbar">
        <h1>&nbsp;&nbsp; GLANCE</h1>
        <div style="margin-left: 0px; margin-bottom: 0px">
            <a href="Homepage1.aspx">Home</a>
            <a href="Login part.aspx">Login</a>
            <a href="color.aspx">Color Theory</a>
            <a href="About2.aspx">About</a>
            <a href="Contact2.aspx">Contact</a>
            <a href="AppointmentBook.aspx">Book Appointment</a>
        </div>
    </div>

    <!-- Background Video -->
    <div class="video-container">
        <video autoplay loop muted>
            <source src="vedio12.mp4" type="video/mp4">
        </video>
    </div>

        <div class="appointment-form">
            <h3>Book an Appointment</h3>
            <asp:TextBox ID="txtName" runat="server" placeholder="Full Name" required="true"></asp:TextBox>
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone Number" required="true"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email Address" required="true"></asp:TextBox>

            <asp:DropDownList ID="serviceType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="serviceType_SelectedIndexChanged">
                <asp:ListItem Text="Select Service Type" Value="" />
                <asp:ListItem Text="Hair" Value="Hair" />
                <asp:ListItem Text="Nail" Value="Nail" />
                <asp:ListItem Text="Makeup" Value="Makeup" />
                <asp:ListItem Text="Skincare" Value="Skincare" />
            </asp:DropDownList>

            <asp:DropDownList ID="serviceOptions" runat="server"></asp:DropDownList>

            <asp:TextBox ID="appointmentTime" runat="server" TextMode="Time" placeholder="Appointment Time" required="true"></asp:TextBox>
            <asp:TextBox ID="appointmentDate" runat="server" TextMode="Date" required="true"></asp:TextBox>

            <asp:Button ID="btnBookAppointment" runat="server" Text="Book Now" OnClick="btnBookAppointment_Click" />

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
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
