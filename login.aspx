﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
                <!--<asp:Button ID="Button1" CssClass="sublogin_register_button" runat="server" Text="登录" OnClick="sublogin_Click" />
                <asp:Button ID="Button2" CssClass="sublogin_register_button" runat="server" Text="注册" OnClick="subregister_Click" />-->
					<asp:TextBox ID="Username" class="user" placeholder="用户名" runat="server" ></asp:TextBox>
                    <asp:TextBox ID="Password" class="lock" placeholder="密码" runat="server"  TextMode="Password"></asp:TextBox>
                
                    <!--<input type="text" class="user" name="email" placeholder="Email" required=""/>
					<input type="password" name="password" class="lock" placeholder="Password"/>-->
					<div class="forgot-top-grids">
						<div class="forgot-grid">
							<ul>
								<li>
									<input type="checkbox" id="brand1" value=""/>
									<label for="brand1"><span></span>Remember me</label>
								</li>
							</ul>
						</div>
						<div class="forgot">
							<a href="findPassword.aspx">Forgot password?</a>
						</div>
						<div class="clearfix"> </div>
					</div>
					<!--<input type="submit" name="Sign In" value="Login"/>-->
                    <asp:Button ID="Button_login" CssClass="loginButton" runat="server" Text="立即登录" OnClick="Button_login_Click" />
					<div class="signup-text">
						<a href="register.aspx">Don't have an account? Create one now</a>
					</div>
					
			</div>
		</div>
		
		<div class="copyright login-copyright">
           <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>    
		</div>




        
    </form>
</body>
</html>