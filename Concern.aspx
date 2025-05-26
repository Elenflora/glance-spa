<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Concern.aspx.cs" Inherits="Homepage1.Concern" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
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

        .highlighted {
            border: 2px solid red;
            background-color: #fce4e4; /* Light red background */
        }

        /* Page Layout */
        .page-container {
            display: flex;
            margin: 20px;
        }

        /* Filters Section */
        .filters {
            width: 20%;
            background-color: white;
            padding: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .filters h3 {
            margin-top: 0;
            color: #e63946;
        }

        .filters label {
            display: block;
            margin: 5px 0;
        }

        /* Product Grid */
        .product-grid {
            width: 80%;
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
        }

        .product-card {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-card h4 {
            margin: 10px 0 5px;
            color: #e63946;
        }

        .product-card p {
            margin: 5px 0;
            color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <h1>&nbsp;&nbsp; GLANCE</h1>
            <div>
                <a href="Homepage1.aspx">Home</a>
                <a href="Login part.aspx">Login</a>
                <a href="color.aspx">Color Theory</a>
                <a href="About2.aspx">About</a>
                <a href="Contact2.aspx">Contact</a>
                <a href="AppointmentBook.aspx">Book Appointment</a>
            </div>
        </div>

        <!-- Filters Section -->
        <div class="filters">
            <h3>Skin Type</h3>
            <label><input type="radio" id="RadioButtonDrySkin" runat="server" name="skinType" /> Dry Skin</label>
            <label><input type="radio" id="RadioButtonNormalCombination" runat="server" name="skinType" /> Normal Combination Skin</label>
            <label><input type="radio" id="RadioButtonOilySkin" runat="server" name="skinType" /> Oily Skin</label>
            <label><input type="radio" id="RadioButtonSensitiveSkin" runat="server" name="skinType" /> Sensitive Skin</label>

            <asp:Button ID="btnApplyFilters" runat="server" Text="Apply Filters" OnClick="ApplyFilters" />
        </div>

        <!-- Product Grid -->
        <div class="product-grid">
            <div id="product1" class="product-card">
                <img src="product1.jpg" alt="product1.jpg" />
                <h4>Barrier Care 2-Step Combo</h4>
                <p>Dry Skin</p>
            </div>
            <div id="product2" class="product-card">
                <img src="product2.jpg" alt="Product Image" />
                <h4>Replenishing Cream Cleanser</h4>
                <p>Oily Skin</p>
            </div>
            <div id="product3" class="product-card">
                <img src="product3.jpg" alt="Product Image" />
                <h4>Smoothing Gel Cleanser</h4>
                <p>Normal Skin</p>
            </div>
            <div id="product4" class="product-card">
                <img src="body1.jpg" alt="Product Image" />
                <h4>Smoothing Gel Cleanser</h4>
                <p>Sensitive Skin</p>
            </div>
        </div>
    </form>

    <script>
        window.onload = function () {
            var skinType = new URLSearchParams(window.location.search).get('skinType');
            if (skinType) {
                highlightProduct(skinType);
            }
        };

        function highlightProduct(skinType) {
            var product1 = document.getElementById("product1");
            var product2 = document.getElementById("product2");
            var product3 = document.getElementById("product3");
            var product4 = document.getElementById("product4");

            resetHighlights();

            if (skinType === "DrySkin") {
                product1.classList.add("highlighted");
            } else if (skinType === "NormalCombination") {
                product3.classList.add("highlighted");
            } else if (skinType === "OilySkin") {
                product2.classList.add("highlighted");
            } else if (skinType === "SensitiveSkin") {
                product4.classList.add("highlighted");
            }
        }

        function resetHighlights() {
            var allProducts = document.querySelectorAll('.product-card');
            allProducts.forEach(function (product) {
                product.classList.remove('highlighted');
            });
        }
    </script>
</body>
</html>
