<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget password.aspx.cs" Inherits="Homepage1.forget_password" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #ffe6e6; /* Light pink background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            padding: 20px;
            text-align: center;
        }

        .container h1 {
            color: #ff4d4d; /* Red text */
        }

        .option {
            display: flex;
            align-items: center;
            margin: 15px 0;
            padding: 10px;
            border: 2px solid #ff4d4d;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .option:hover {
            background-color: #ffe6e6; /* Light pink hover */
        }

        .option input {
            margin-right: 10px;
        }

        .btn {
            display: inline-block;
            background-color: #ff4d4d;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #e60000; /* Darker red */
        }

        .note {
            margin-top: 20px;
            font-size: 0.9em;
            color: #666;
        }

        a {
            color: #ff4d4d;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Forgot Password</h1>
            <p>Please select an option to reset your password:</p>
            
            <div class="option">
                <input type="radio" name="resetOption" id="resetEmail" value="Email" />
                <label for="resetEmail">Reset via Email</label>
            </div>
            <div class="option">
                <input type="radio" name="resetOption" id="resetSMS" value="SMS" />
                <label for="resetSMS">Reset via SMS</label>
            </div>
            
            <button type="submit" class="btn">Send Link</button>
            <div class="note">
                Didn't receive the link? <a href="#">Resend</a>
            </div>
        </div>
    </form>
</body>
</html>