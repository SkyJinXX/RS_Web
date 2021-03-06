﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="findPassword2.aspx.cs" Inherits="findPassword2" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/passwordChange.css" rel="stylesheet" type="text/css"/>
	<link href="Bootstrap/bootstrap.min.css" type="text/css" rel="stylesheet" />
	<link href="Bootstrap/font-awesome.min.css" type="text/css" rel="stylesheet" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <link href="style/custom.css" rel="stylesheet" type="text/css" />
    <link href="style/findPassword.css" rel="stylesheet" type="text/css" />
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
        <div class="sticky-header header-section top_background">
            <div class="header-left">
                <!--logo -->
                <div class="logo logo_background">
                    <a href="index.aspx">
                        <img src="images/logo/logo_picture_white.gif" alt="" />
                    </a>
                </div>
                <!--//logo-->
                <div class="top_title_logo">
                    <i class="fa fa-product-hunt top_title_icon"></i>
                </div>
                <div class="top_title">
                    <span class="top_title_content">安全中心</span>
                </div>

                <div class="clearfix"></div>
            </div>

            <div class="clearfix"></div>
        </div>
            
            <div class="clearfix"></div>
        <div id="page-wrapper">
            <div class="main-page">
                <div class="subtop">
                    <div class="dotted_line"></div>
                    <div class="sublogo"><i class="fa fa-lock sublogo_font"></i></div>
                    <div class="dotted_line"></div>
                    <div class="sublogo"><i class="fa fa-unlock-alt sublogo_font"></i></div>
                    <div class="dotted_line"></div>
                    <div class="sublogo sublogo_selected"><i class="fa fa-check-circle sublogo_font selected"></i></div>
                    <div class="dotted_line"></div>
                </div>
                <div class="findPassword-body">
                    
                    <div class="login-info">
                        <asp:TextBox ID="newPassword" class="user" placeholder="新密码" runat="server" required="required" TextMode="Password"></asp:TextBox>
                        <asp:TextBox ID="confirmPassword" class="user" placeholder="确认密码" runat="server" required="required" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="Button_changePassword" CssClass="loginButton" runat="server" Text="确认修改" OnClick="Button_changePassword_Click"  />
                        <asp:Button ID="Button1" CssClass="loginButton" runat="server" Text="前往登录" OnClick="Button1_Click"   />
                    </div>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>