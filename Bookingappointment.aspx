<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookingappointment.aspx.cs" Inherits="Homepage1.Bookingappointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Appointment List</title>
    <style>
        body {
            background-color: pink;
            font-family: Arial, sans-serif;
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


        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: red;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #ffcccc;
        }

        tr:nth-child(odd) {
            background-color: #ffe6e6;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    &nbsp;<!-- Main Content --><div class="main-content">
    <!-- Navbar -->
    <div class="navbar">
        <h1>&nbsp;&nbsp; GLANCE</h1>
        <div>
             <a href="CrystalReport.aspx">Search Appointment list</a>
             <a href="Report2.aspx">Signup Details</a>
        </div>
    </div>

    <div class="container">
        <h2>Appointment List</h2>
         
            <asp:Repeater ID="RepeatInformation" runat="server">  
                <HeaderTemplate>  
                    <table>  
                        <tr>  
                            <th>FullName</th>  
                            <th>Email</th>  
                            <th>PhoneNumber</th>  
                            <th>ServiceType</th> 
                            <th>ServiceOption</th>
                            <th>AppointmentTime</th>  
                            <th>AppointmentDate</th>  
                        </tr>  
                </HeaderTemplate>  
                <ItemTemplate>  
                    <tr>  
                        <td><%# Eval("FullName") %></td>  
                        <td><%# Eval("Email") %></td>  
                        <td><%# Eval("PhoneNumber") %></td>  
                        <td><%# Eval("ServiceType") %></td>
                         <td><%# Eval("ServiceOption") %></td>
                        <td><%# Eval("AppointmentTime") %></td>  
                        <td><%# Eval("AppointmentDate") %></td>  
                    </tr>  
                </ItemTemplate>  
                <AlternatingItemTemplate>  
                    <tr>  
                        <td><%# Eval("FullName") %></td>  
                        <td><%# Eval("Email") %></td>  
                        <td><%# Eval("PhoneNumber") %></td>  
                        <td><%# Eval("ServiceType") %></td>
                        <td><%# Eval("ServiceOption") %></td>
                        <td><%# Eval("AppointmentTime") %></td>  
                        <td><%# Eval("AppointmentDate") %></td>  
                    </tr>  
                </AlternatingItemTemplate>  
                <FooterTemplate>  
                    </table>  
                </FooterTemplate>  
            </asp:Repeater>  
        </form>
       
    </div>
</body>
</html>
