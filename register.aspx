<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

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
    <title>凛冬将至 | 帐号注册</title>
</head>
<body class="login-bg">
    <form id="form1" class="form" runat="server">
        <div class="login-body">
			<div class="login-heading">
				<h1>Welcome to register</h1>
			</div>
			<div class="login-info">
                    <asp:TextBox ID="Username" class="user" runat="server" placeholder="用户名" maxlength="10"  ></asp:TextBox>
                    <asp:TextBox ID="Password" class="lock" runat="server" placeholder="密码" maxlength="20"  TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="ConfirmPassword" class="lock" runat="server" placeholder="确认密码" maxlength="20"  TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="Email" runat="server" placeholder="电子邮件" maxlength="20" ></asp:TextBox>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="电子邮件" maxlength="20" Visible="False" ></asp:TextBox>
					
				    <asp:Button ID="Button_register" CssClass="loginButton" runat="server" Text="立即注册" OnClick="Button_register_Click" />	
                    <div class="signup-text">
						<a href="login.aspx">已有帐号? 马上登录</a>
					</div>
					
			</div>
		</div>
    </form>
</body>
</html>

