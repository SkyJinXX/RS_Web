<%@ Page Language="C#" AutoEventWireup="true" CodeFile="interests.aspx.cs" Inherits="interests" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="Bootstrap/bootstrap.min.css" type="text/css" rel="stylesheet" />
	<link href="Bootstrap/font-awesome.min.css" type="text/css" rel="stylesheet" />
	<link href="css/htmleaf-demo.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
	<link href="css/wap.css?2" rel="stylesheet" type="text/css" />
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<link href="css/button.css" rel="stylesheet" type="text/css" />
    <link href="css/index.css" rel="stylesheet" type="text/css" />

	
	
	<title>用户信息</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper toggled">
            <div class="top">
                <div class="menu_nav">
                    <ul>
                        <li>
                            <a href="index.aspx">个性推荐</a>
                        </li>
                        <li>
                            <a href="allInformation.aspx">发现世界</a>
                        </li>
                    </ul>
                </div>
            </div>
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <a href="#" id="toggle-sidebar"><i class="fa fa-bars i_position"></i></a>
                    <div class="sidebar-brand">
                        <a href="index.aspx">凛冬将至</a>
                    </div>
                    <div class="sidebar-header">
                        <div class="user-pic">
                            <img class="img-responsive img-rounded" src="assets/img/user.jpg" alt="">
                        </div>
                        <div class="user-info">
                            <span class="user-name"><strong>Username</strong></span>
                            <span class="user-role">Identity</span>
                            <div class="user-status">
                                <a href="#"><span class="label label-success">Online</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-menu">
                        <ul>
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="fa fa-tv"></i><span>兴趣标签</span><span class="label label-danger"></span></a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="fa fa-photo"></i><span>收藏</span></a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="fa fa-bar-chart-o"></i><span>修改密码</span></a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="fa fa-diamond"></i><span>基本信息</span></a>
                            </li>

                        </ul>
                    </div>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->

                <div class="sidebar-footer">
                    <div style="width: 130px; height: 30px;"></div>
                    <div>
                        <asp:Button ID="Button_setting" CssClass="setting" runat="server" Text="" OnClick="Button_setting_Click" />
                    </div>
                    <div>
                        <asp:Button ID="Button_logout" CssClass="logout" runat="server" Text="" OnClick="Button_logout_Click" />
                    </div>
                </div>
            </nav>
            <!-- sidebar-wrapper  -->
            <main class="page-content">
                <div class="container-fluid">
                    <header class="htmleaf-header">
                        <div class="pet_circle_nav">
                        </div>
                    </header>
                    <div class="table">
                        <div class="table_inside">
                            <div class="message_title">

                            </div>
                            <div class="subline"></div>
                            <div class="message_line">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </main><!-- page-content" -->
            <footer>
                footer is unfinshed
            </footer>
        </div>
        <!-- page-wrapper -->


        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
        <script src="js/bootstrap.min.js"></script>
        <script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="assets/js/custom.js"></script>
    </form>
</body>
</html>
