<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterForm.aspx.cs"  Inherits="RegisterForm"  %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
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
                <h1 class="title">Register</h1>
                <div runat="server">

                    <div class="input-container">
                        <asp:TextBox ID="txtName" runat="server" required=""></asp:TextBox>

                        <label for="Name">Name</label>
                        <div class="bar"></div>
                    </div>

                    <div class="input-container">
                        <asp:TextBox TextMode="Email" ID="txtEmail" runat="server" required=""></asp:TextBox>
                        <label for="Email">Email</label>
                        <div class="bar"></div>
                    </div>

                    <div class="input-container">
                        <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" required=""></asp:TextBox>
                        <label for="Password">Password</label>
                        <div class="bar"></div>
                    </div>

                    <div class="input-container">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" required=""></asp:TextBox>
                        <label for="ConfirmPassword">Confirm Password</label>
                        <div class="bar"></div>
                    </div>

                    <div style="text-align:center">
                        <asp:Button runat="server" ID="btnSignUp" Text="Sign Up" Width="100px" OnClick="btnSignUp_Click" BackColor="#088389" Height="40px"/>
                    </div>

                    <br />

                    <div style="text-align:center">
                        <asp:Label ID="lblMsg" runat="server" style="color:#088389; font-family:Arial; font-size:15px" Visible="false">You registered Successfully</asp:Label>
                    </div>
                
                </div>
            </div>

            <br />
           

        </div>

    </form>
</body>
</html>
