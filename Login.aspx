<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <title>Material Login Form</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900' />
    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' />
    <link rel="stylesheet" href="css/loginstyle.css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="js/index.js"></script>
</head>

<body>

    <form runat="server">

        <div class="pen-title"></div>

        <div class="container">

            <div class="card"></div>

            <div class="card">
                <h1 class="title">Login</h1>

                <div runat="server">

                    <div class="input-container">
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                        <label for="txtEmail">Email</label>
                        <div class="bar"></div>
                    </div>

                    <div class="input-container">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <label for="Password">Password</label>
                        <div class="bar"></div>
                    </div>

                    <div style="text-align:center">
                        <asp:Button runat="server" ID="btnLogin" Text="Login" BackColor="#088389" Height="40px" OnClick="btnLogin_Click"/>
                    </div>
                    
                    <div class="footer"><asp:LinkButton ID="lbtnForgetPassword" runat="server" OnClick="lbtnForgetPassword_Click">Forgot your password?</asp:LinkButton></div>
                
                </div>
            </div>

            <div style="text-align:center">
                <p runat="server">Add new account ? </p>
                <span>
                    <asp:LinkButton ID="lbtnRegister" runat="server" style="color:#088389" OnClick="lbtnRegister_Click">Register</asp:LinkButton>

                </span>
            </div>
            
        </div>

    </form>
</body>
</html>
