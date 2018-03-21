<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_imformation.aspx.cs" Inherits="user_imformation" %>

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
    <link href="css/user_imformation.css" rel="stylesheet" type="text/css" />
	
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
                            <asp:Label ID="user_name" class="user-name" runat="server" Text="Username"></asp:Label>
                            <!--<span class="user-name"><strong>Username</strong></span>-->
                            <!--<span class="user-role">Identity</span>-->
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
                        <div class="user_imformation_image">
                            <img src="img/image/board1.jpg" />
                        </div>
                    </header>
                    <div class="table">
                        <div class="user_left">
                            <img src="img/image/221-man.png" />
                        </div>
                        <div class="table_inside">
                            <div class="message_title">
                                <asp:Label ID="Information_modification" runat="server" Text="用户名"></asp:Label>
                            </div>
                            <div class="subline"></div>
                            <div class="message_line">
                                <asp:Label ID="label_Username" runat="server" Text="用户名:" ViewStateMode="Inherit"></asp:Label>
                                <asp:TextBox ID="TextBox_Username" runat="server"></asp:TextBox><br />
                                <asp:Label ID="Label_Nickname" runat="server" Text="昵称:"></asp:Label>
                                <asp:TextBox ID="TextBox_Nickname" runat="server"></asp:TextBox>
                                <br />
                                <asp:Label ID="label_Email" runat="server" Text="邮件:" ViewStateMode="Inherit"></asp:Label>
                                <asp:TextBox ID="TextBox_Email" runat="server"></asp:TextBox><br />
                                <asp:Label ID="Label_Age" runat="server" Text="年龄:"></asp:Label>
                                <asp:TextBox ID="TextBox_Age" runat="server"></asp:TextBox><br />
                                <asp:Label ID="Label_Sex" runat="server" Text="性别:"></asp:Label>
                                <asp:TextBox ID="TextBox_Sex" runat="server"></asp:TextBox><br />
                            </div>
                            <div class="subline"></div>
                            <div class="button">
                                <asp:Button ID="Button_cancel" runat="server" Text="放弃修改" OnClick="Button_cancel_Click" />
                                <asp:Button ID="Button_confirm" runat="server" Text="确认修改" OnClick="Button_confirm_Click" />
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
