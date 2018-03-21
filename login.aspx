<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
	<link href="Bootstrap/bootstrap.min.css" type="text/css" rel="stylesheet" />
	<link href="Bootstrap/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
    <link rel="icon" type="image/png" href="img/logo/logo_2.png" />
	
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/js/custom.js"></script>

    <title>凛冬将至 | 登录</title>
</head>
<body>
    <form id="form1" class="form" runat="server">
        <div class="htmleaf-container">
            <div class="wrapper">
                <div class="main_box">
                    <div class="main_title">
                        <div class="logo_box">
                            <img src="img/logo/logo.gif" />
                        </div>
                        <div class="login_register_button">
                            <asp:Button ID="sublogin" CssClass="sublogin_register_button" runat="server" Text="登录" OnClick="sublogin_Click" />
                            <asp:Button ID="subregister" CssClass="sublogin_register_button" runat="server" Text="注册" OnClick="subregister_Click" />
                        </div>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="container">
                    <h1>Welcome to login</h1>
                    <div class="box">
                        <asp:TextBox ID="Username" placeholder="用户名" runat="server" ></asp:TextBox>
                        <asp:TextBox ID="Password" placeholder="密码" runat="server"  TextMode="Password"></asp:TextBox>
                        <div class="forgetPassword"><a href="findPassword.aspx">忘记密码</a></div>
                        <asp:Button ID="Button_login" CssClass="loginButton" runat="server" Text="立即登录" OnClick="Button_login_Click" />
                    </div>
                </div>
                <div class="footer">
                    <div class="line"></div>
                </div>
                <ul class="bg-bubbles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
    </form>
</body>
</html>