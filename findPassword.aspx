<%@ Page Language="C#" AutoEventWireup="true" CodeFile="findPassword.aspx.cs" Inherits="findPassword" %>

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
                    <h1>找回密码</h1>
                    <div class="box">
                        <asp:TextBox ID="identity" placeholder="请输入你的帐号" runat="server" required="required" ></asp:TextBox>
                        <asp:TextBox ID="identifyingcode" placeholder="请输入验证码" runat="server" required="required" ></asp:TextBox>
                        <img src="png.aspx" id="img" onclick="f_refreshtype()" />
                        <asp:Button ID="next" CssClass="changePasswordButton" runat="server" Text="下一步" OnClick="next_Click" />
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
