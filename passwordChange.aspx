<%@ Page Language="C#" AutoEventWireup="true" CodeFile="passwordChange.aspx.cs" Inherits="passwordChange" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/passwordChange.css" rel="stylesheet" type="text/css"/>
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
                            
                        </div>
                    </div>
                    <div class="line"></div>
                </div>
                <div class="container">
                    <h1>Password Change</h1>
                    <div class="box">
                        <asp:TextBox ID="oldPassword" placeholder="旧密码" runat="server" required="required" TextMode="Password"></asp:TextBox>
                        <asp:TextBox ID="newPassword" placeholder="新密码" runat="server" required="required" TextMode="Password"></asp:TextBox>
                        <asp:TextBox ID="confirmPassword" placeholder="确认密码" runat="server" required="required" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="Button_changePassword" CssClass="changePasswordButton" runat="server" Text="Confirm" OnClick="Button_changePassword_Click" />
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