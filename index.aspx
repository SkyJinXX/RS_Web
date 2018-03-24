  <%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="http://lib.sinaapp.com/js/jquery/2.0.2/jquery-2.0.2.min.js"></script>
    <script src="js/pageMore.js"></script>
	<link href="Bootstrap/bootstrap.min.css" type="text/css" rel="stylesheet" />
	<link href="Bootstrap/font-awesome.min.css" type="text/css" rel="stylesheet" />
	<link href="css/htmleaf-demo.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css" />
	<link href="css/artcle_item_list.css" rel="stylesheet" type="text/css" />
	<link href="css/wap.css?2" rel="stylesheet" type="text/css" />
	<link href="css/index.css" rel="stylesheet" type="text/css" />
	<link href="css/button.css" rel="stylesheet" type="text/css" />
	
	<title>首页</title>
    
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
                            <a href="allInformation.aspx">热门</a>
                        </li>
                    </ul>
                </div>

                <div class="search_position">
                    <div class="sidebar-search">
                        <div class="search">
                            <asp:TextBox ID="searchtextbox" CssClass="searchtextbox" runat="server" placeholder="Search for..."></asp:TextBox>
                            <asp:Button ID="search" CssClass="searchButton" runat="server" Text="" OnClick="search_Click" />
                        </div>
                    </div>
                    <!-- sidebar-search 123  -->
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
                                <a href="interests.aspx"><i class="fa fa-tv"></i><span>兴趣标签</span></a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="#"><i class="fa fa-photo"></i><span>收藏</span></a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="passwordChange.aspx"><i class="fa fa-bar-chart-o"></i><span>修改密码</span></a>
                            </li>
                            <li class="sidebar-dropdown">
                                <a href="user_imformation.aspx"><i class="fa fa-diamond"></i><span>基本信息</span></a>
                            </li>
                        </ul>
                    </div>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->

                <div class="sidebar-footer">
                    <div style="width:130px;height:30px;"></div>
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
                            <ul class="pet_circle_nav_list">
                                <li>
                                    <a href="#" class="iconfont pet_nav_xinxianshi ">&#xe61e;</a><span>分类1</span></li>
                                <li>
                                    <a href="#" class="iconfont pet_nav_zhangzhishi ">&#xe607;</a><span>分类2</span></li>
                                <li>
                                    <a href="#" class="iconfont pet_nav_kantuya ">&#xe62c;</a><span>分类3</span></li>
                                <li>
                                    <a href="#" class="iconfont pet_nav_mengzhuanti ">&#xe622;</a><span>分类4</span></li>
                                <li>
                                    <a href="#" class="iconfont pet_nav_meirong ">&#xe629;</a><span>分类6</span></li>
                                <li>
                                    <a href="#" class="iconfont pet_nav_yiyuan ">&#xe602;</a><span>分类7</span></li>
                                <li>
                                    <a href="#" class="iconfont pet_nav_dianpu ">&#xe604;</a><span>分类8</span></li>
                                <li>
                                    <a href="javascript:;" class="iconfont pet_nav_gengduo ">&#xe600;</a><span>分类9</span></li>
                            </ul>
                            <div class="pet_more_list">
                                <div class="pet_more_list_block">
                                    <div class="iconfont pet_more_close"><a>×</a></div>
                                    <div class="pet_more_list_block">
                                        <div class="pet_more_list_block_name">
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe61e;</i>
                                                <div class="pet_more_list_block_line_font">新鲜事</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe607;</i>
                                                <div class="pet_more_list_block_line_font">趣闻</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe62c;</i>
                                                <div class="pet_more_list_block_line_font">阅读</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe622;</i>
                                                <div class="pet_more_list_block_line_font">专题</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe629;</i>
                                                <div class="pet_more_list_block_line_font">订阅</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe602;</i>
                                                <div class="pet_more_list_block_line_font">专栏</div>
                                            </a>
                                            <div class="pet_more_list_block_name_title pet_more_list_block_line_height">服务 Service</div>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe61e;</i>
                                                <div class="pet_more_list_block_line_font">新鲜事</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe607;</i>
                                                <div class="pet_more_list_block_line_font">趣闻</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe62c;</i>
                                                <div class="pet_more_list_block_line_font">阅读</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe622;</i>
                                                <div class="pet_more_list_block_line_font">专题</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe629;</i>
                                                <div class="pet_more_list_block_line_font">订阅</div>
                                            </a>
                                            <a class="pet_more_list_block_line">
                                                <i class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe602;</i>
                                                <div class="pet_more_list_block_line_font">专栏</div>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </header>
                    <div class="subline"></div>
                    <div class="InformationList">
                    </div>
                </div>
                <footer>
                    <div class="line"></div>
                    footer is unfinshed
                </footer>
            </main><!-- page-content" -->
            
        </div>
        <!-- page-wrapper -->
    </form>
	
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>