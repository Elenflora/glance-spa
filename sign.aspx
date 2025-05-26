<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="Homepage1.sign" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background: url('back.jpg') no-repeat center center fixed; 
    background-size: cover; /* Ensures the image covers the entire screen */
    color: #333;
    margin: 0;
    padding: 0;
}
        


        .signup-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #FF4081; /* Pink color */
        }
        p {
            text-align: center;
            color: #555;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #FF4081; /* Pink color */
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
        }
        .form-actions {
            text-align: center;
        }
        .form-actions .btn {
            background-color: #FF4081; /* Pink color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-actions .btn:hover {
            background-color: #E040FB; /* Lighter pink */
        }
        .login-link {
            text-align: center;
            margin-top: 20px;
        }
        .login-link a {
            color: #FF4081; /* Pink color */
            text-decoration: none;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }
        .success-message {
            color: green;
            font-size: 14px;
            margin-top: 5px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>Create Account</h1>
        <p>Sign up to get started</p>
        
        <form id="form1" runat="server">
            <!-- Success/Error Message Display -->
            <div>
                <asp:Label ID="lblMessage" runat="server" CssClass="error-message"></asp:Label>
            </div>

            <!-- Name Field -->
            <div class="form-group">
                <label for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red" CssClass="error-message" />
                <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName" 
                    ValidationExpression="^[a-zA-Z\s]+$" ErrorMessage="Only letters are allowed" ForeColor="Red" CssClass="error-message" />
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" CssClass="error-message" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" ErrorMessage="Invalid email format" ForeColor="Red" CssClass="error-message" />
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red" CssClass="error-message" />
            </div>

            <!-- Confirm Password Field -->
            <div class="form-group">
                <label for="txtConfirmPassword">Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm your password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm your password" ForeColor="Red" CssClass="error-message" />
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match" ForeColor="Red" CssClass="error-message" />
            </div>

            <!-- Phone Number Field -->
            <div class="form-group">
                <label for="txtPhone">Phone Number (Optional)</label>
                <asp:TextBox ID="txtPhone" runat="server" placeholder="Enter your phone number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" 
                    ValidationExpression="^\d{10}$" ErrorMessage="Only numbers allowed (10 digits required)" ForeColor="Red" CssClass="error-message" />
            </div>

            <!-- Address Field -->
            <div class="form-group">
                <label for="txtAddress">Address (Optional)</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="Multiline" placeholder="Enter your address"></asp:TextBox>
            </div>

            <!-- Signup Button -->
            <div class="form-actions">
                <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" CssClass="btn" />
            </div>

            <!-- Login Link -->
            <div class="login-link">
                Already have an account? <a href="Login part.aspx">Go to Login Page</a>
            </div>
        </form>
    </div>
</body>
</html>