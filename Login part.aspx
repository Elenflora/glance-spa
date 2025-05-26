<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login part.aspx.cs" Inherits="Homepage1.Login_part" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        /* Error message styling */
        .error-message {
            font-size: 12px;
            color: red;
        }
         /* Full-page background video */
        .bg-video {
            position: absolute;
            top: 0;
            left: 0;
            min-width: 100%;
            min-height: 100%;
            z-index: -1;
            
        }

        /* Rest of the styles remain unchanged */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ffe6e6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }

        .login-container img {
            width: 100px;
            height: 100px;
            margin-bottom: 15px;
            border-radius: 50%;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #b30000;
        }

        p {
            margin: 0 0 20px;
            color: #ff6666;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            color: #b30000;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ff9999;
            border-radius: 5px;
        }

        .form-actions {
            margin-top: 15px;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #b30000;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
        }

        .btn-google {
            background-color: #ff4d4d;
            margin-top: 10px;
        }

        .forgot-password,
        .signup {
            margin-top: 15px;
            font-size: 14px;
        }

        .forgot-password a,
        .signup a {
            color: #b30000;
            text-decoration: none;
        }
    </style>

    <script>
        // Client-side validation for email and password
        function validateForm() {
            const email = document.getElementById('<%= txtEmail.ClientID %>').value;
            const password = document.getElementById('<%= txtPassword.ClientID %>').value;
            const userType = document.getElementById('<%= UserType.ClientID %>').value;
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            const passwordPattern = /^(?=.*[A-Z]).{8,}$/;

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (!passwordPattern.test(password)) {
                alert("Password must be at least 8 characters long and include at least one uppercase letter.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <video class="bg-video" autoplay muted loop>
        <source src="InShot_20250225_230443081.mp4" type="video/mp4" >
        
       
    </video>

    <form id="form2" runat="server" onsubmit="return validateForm();">
        <div class="login-container">
            <img src="glance img.jpg" alt="User Icon" />
            <h1>Welcome back</h1>
            <p>Welcome back! Please enter your details.</p>

            <!-- Error Message Label -->
            <asp:Label ID="lblMessage" runat="server" Visible="false" Text="" Font-Bold="true" ForeColor="Red" />

            <div class="form-group">
                <label for="email">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="error-message" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Invalid email format." CssClass="error-message"
                    ValidationExpression="^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$" />
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="error-message" />
                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Password must be at least 8 characters long and contain an uppercase letter." CssClass="error-message"
                    ValidationExpression="^(?=.*[A-Z]).{8,}$" />
            </div>

            <div class="form-group">
                <label for="UserType">Login As</label>
                <asp:DropDownList ID="UserType" runat="server" CssClass="form-control">
                    <asp:ListItem Text="User" Value="User" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                </asp:DropDownList>
                <asp:HiddenField ID="UserTypeHidden" runat="server" />
            </div>

            <div class="form-actions">
                <!-- Button for login -->
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClientClick="document.getElementById('<%= UserTypeHidden.ClientID %>').value = document.getElementById('<%= UserType.ClientID %>').value; return validateForm();" OnClick="btnLogin_Click" />
            </div>

            <div class="forgot-password">
                <a href="https://localhost:44340/forget%20password">Forgot password</a>
            </div>

            <div class="signup">
                Don't have an account? <a href="https://localhost:44340/sign">Sign up for free</a>
                <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </form>

</body>
</html>
