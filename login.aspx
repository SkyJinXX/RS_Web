<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="style/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="style/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <!-- font-awesome icons -->
    <link href="style/font-awesome.css" rel="stylesheet"/> 

    <link href="style/login.css" rel="stylesheet" type="text/css" />

    <!-- //font-awesome icons -->
    <!--webfonts-->
    <link href="style/font-awesome.css" rel="stylesheet" type="text/css"/>
    <!--//webfonts--> 
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>

    <!-- //js -->
    <title>凛冬将至 | 登录</title>
</head>
<body class="login-bg">
    <form id="form1" class="form" runat="server">
        <div class="login-body">
			<div class="login-heading">
				<h1>Login</h1>
			</div>
            <div class="login-info">
                <asp:TextBox ID="Username" class="user" placeholder="用户名" runat="server"></asp:TextBox>
                <asp:TextBox ID="Password" class="lock" placeholder="密码" runat="server" TextMode="Password"></asp:TextBox>

                <div class="forgot-top-grids">
                    <div class="forgot-grid">
                        <ul>
                            <li>
                                <input type="checkbox" id="brand1" value="" />
                                <label for="brand1"><span></span>记住密码</label>
                            </li>
                        </ul>
                    </div>
                    <div class="forgot">
                        <a href="findPassword.aspx">忘记密码?</a>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!--<input type="submit" name="Sign In" value="Login"/>-->
                <asp:Button ID="Button_login" CssClass="loginButton" runat="server" Text="立即登录" OnClick="Button_login_Click" />
                <div class="signup-text">
                    <a href="register.aspx">还没有帐号? 马上注册</a>
                </div>

            </div>
		</div>



        
    </form>
</body>
</html>