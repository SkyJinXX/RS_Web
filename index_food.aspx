﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index_food.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/> 
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
    SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="style/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="style/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link rel="icon" href="favicon.ico" type="image/x-icon" >
    <!-- font-awesome icons -->
    <link href="style/font-awesome.css" rel="stylesheet"> 
    
    <link href="style/font-awesome.min.css" rel="stylesheet"> 
    <!-- //font-awesome icons -->
    <link href="style/wap.css?2" rel="stylesheet" type="text/css" />
    <!--line-->
    <link href="style/line.css" rel="stylesheet" type="text/css" />
    <link href="style/content.css" rel="stylesheet" type="text/css" />
    <link href="style/nav-total-left.css" rel="stylesheet" type="text/css" />
    <link href="style/button.css" rel="stylesheet" type="text/css" />
    <link href="style/custom.css" rel="stylesheet" type="text/css"/>
    <link href="style/food_index.css" rel="stylesheet" type="text/css" />

    <!-- chart -->
    <script src="js/Chart.js"></script>
    <!-- //chart -->
     <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/FoodShow.js"></script>
    <!--webfonts-->
    <link href="style/fonts.css" rel="stylesheet" type="text/css">
    <!--//webfonts--> 
    <!--animate-->
    <link href="style/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
	<script>
        new WOW().init();
	</script>
    <!--//end-animate-->
    <!-- Metis Menu -->
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <!--//Metis Menu -->
	<title>美食</title>
    
</head>
<body class="cbp-spmenu-push cbp-spmenu-push-toright">
    <form id="form1" runat="server">
        <div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="index.aspx">
						<img src="images/logo/logo_picture_white.gif" alt="" />
							
					</a>
				</div>
				<!--//logo-->
				<div class="header-right-one header-right-grid-one">
					<div class="profile_details_left-one"><!--notifications of menu start -->
						<ul class="nofitications-dropdown">
							<li class="dropdown head-dpdn header-nav">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									推荐
								</a>
								
							</li>
							<li class="dropdown head-dpdn header-nav">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									发现
								</a>
								
							</li>	
							
							
						</ul>
						<div class="clearfix"> </div>
					</div>
				</div>
				
				
				<div class="clearfix"> </div>
			</div>
			<!--search-box-->
            <div class="search-box">
                <input type="text" id ="searchText" style="width:100%;height: 30px;" placeholder="发现你的兴趣..."/>
                
			</div>
            <div class="search-button">    
                <input type="button" id="searchButton" style="height: 30px;" value="搜索"/>
                 
            </div>
			<!--//end-search-box-->
        <div class="header-right header-right-grid">
            <div class="profile_details_left">
                <!--notifications of menu start -->
                <ul class="nofitications-dropdown">
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-heart"></i><span class="badge">...</span>
                        </a>
                        <ul class="dropdown-menu anti-dropdown-menu">
                            <li>
                                <div class="notification_header">
                                    <h3>兴趣标签</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="user_img">
                                    <img src="images/1.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet</p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li class="odd"><a href="#">
                                <div class="user_img">
                                    <img src="images/2.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li><a href="#">
                                <div class="user_img">
                                    <img src="images/3.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="interests.aspx">See all messages</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-tasks"></i><span class="badge blue1">...</span>
                        </a>
                        <ul class="dropdown-menu anti-dropdown-menu">
                            <li>
                                <div class="notification_header">
                                    <h3>收藏的资讯</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar yellow" style="width: 40%;"></div>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar green" style="width: 90%;"></div>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar red" style="width: 33%;"></div>
                                </div>
                            </a></li>
                            <li><a href="#">
                                <div class="task-info">
                                    <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="bar  blue" style="width: 80%;"></div>
                                </div>
                            </a></li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="interests.aspx">See all pending tasks</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-bell"></i><span class="badge blue">...</span>
                        </a>
                        <ul class="dropdown-menu anti-dropdown-menu">
                            <li>
                                <div class="notification_header">
                                    <h3>我的评论</h3>
                                </div>
                            </li>
                            <li><a href="#">
                                <div class="user_img">
                                    <img src="images/2.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet</p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li class="odd"><a href="#">
                                <div class="user_img">
                                    <img src="images/1.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li><a href="#">
                                <div class="user_img">
                                    <img src="images/3.png" alt=""></div>
                                <div class="notification_desc">
                                    <p>Lorem ipsum dolor amet </p>
                                    <p><span>1 hour ago</span></p>
                                </div>
                                <div class="clearfix"></div>
                            </a></li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="#">See all notifications</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
                <div class="clearfix"></div>
            </div>

            <!--notification menu end -->
            <div class="profile_details">
                <ul>
                    <li class="dropdown profile_details_drop">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <div class="profile_img">
                                <img id="User_HeaderImager" runat="server" src="images/image/user.png" alt="" />
                                <div class="clearfix"></div>
                            </div>
                        </a>
                        <ul class="dropdown-menu drp-mnu">
                            <li><a href="#"><i class="fa fa-cog"></i>修改密码</a> </li>
                            <li><a href="user_imformation.aspx"><i class="fa fa-user"></i>个人信息</a> </li>
                            <li><a href="#"><i class="fa fa-sign-out"></i>注销</a> </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="username">
                <asp:Label ID="user_name" class="user-name" runat="server" Text="Username"></asp:Label>
            </div>
            <div class="clearfix"></div>
        </div>
			<div class="clearfix"> </div>	
		</div>
        <div id="page-wrapper">
			<div class="main-page">
				
				<div class="classification">
					<ul id ="typeUl">
						<li><i></i><a class="classification_type" href="#"><b>私房菜</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>家常菜</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>下午茶</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>人气餐厅</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>日本料理</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>韩国料理</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>西餐</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>中餐</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>小吃</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>咖啡厅</b></a></li>
                        <li><i></i><a class="classification_type" href="#"><b>特色菜</b></a></li>
                        <li><i></i><a class="classification_type" href="#"><b>自助餐</b></a></li>

					</ul>
				</div>
				<!-- //four-grids -->
				<!--row-->
				<div class="message-left">
					<div class="row">			
						<div class="col-md-6" >
                        <div class="panel panel-widget">
                            <div class="panel-title-food">
                                <a href="view_food.aspx?fid='1'"><b>朋友圈美食社区·鲜鱼馆</b></a>
                                <ul class="panel-tools">
                                    <li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
                                </ul>
                            </div>
                            <div class="panel-body" style="display: block;">
                                <!-- candlestick -->
                                <div class="candlestick">
                                   <div id="example-8">
                                       <!--<span>资讯内容</span>-->
                                        <div class="content-left">
                                            <a href="view_food.aspx?fid='1'"><img src="img/Food/1.jpg" alt="图片" style="width: 210px; height: 140px"/></a>
                                        </div>
                                        <div class="content-right">
                                            <a href="#">
                                                <div class="content-right-line">
                                                    <div class="first-line-item">人均: ￥92</div>
                                                    <div class="first-line-item">口味: 8.9</div>
                                                    <div class="first-line-item">环境: 9.2</div>
                                                    <div class="first-line-item">服务: 8.9</div>
                                                </div>
                                                <div class="content-right-line">
                                                    <div class="food-sort-title">特色</div>
                                                    <div class="food-sort">私房菜</div>
                                                </div>
                                                <div class="content-right-line-address">
                                                    <div class="food-address-title">地点</div>
                                                    <div class="food-address">新安南路11-1号、11-8号城中湖旅游码头旁(怡途酒店对面)</div>
                                                </div>
                                                <div class="content-right-line">
                                                    <div class="food-time-title">营业时间</div>
                                                    <div class="food-time">周一至周日 10:00-23:00</div>
                                                </div>  
                                                <!--
                                                <div class="content-right-line">
                                                    <div class="food-comments-title">营业时间</div>
                                                    <div class="food-comments">周一至周日 10:00-23:00</div>
                                                </div>  
                                                -->
                                            </a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
					</div>
					
				</div>
                <div class="nav-right-one">
                    <div class="nav-right-one-title">热门</div>
					<ul>
						<li><a class="nav-right-one_a_after" href="#" id="a" runat="server"> link1</a></li>
						<li><a class="nav-right-one_a_after" href="#" id="b" runat="server"> link2</a></li>
                        <li><a class="nav-right-one_a_after" href="#" id="c" runat="server"> link3</a></li>
						<li><a class="nav-right-one_a_after" href="#" id="d" runat="server"> link4</a></li>
						<li><a class="nav-right-one_a_after" href="#" id="h" runat="server"> link5</a></li>
                        <li><a class="nav-right-one_a_after" href="#" id="f" runat="server"> link6</a></li>
					</ul>
				</div>
				<div class="nav-right-two">
					<ul>
						<li><i class="fa fa-codepen" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="#"> 我的兴趣模型</a></li>
						<li><i class="fa fa-heart" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="#"> 兴趣标签</a></li>
                        <li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="Collection.aspx"> 我的收藏</a></li>
					    <%--<li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="announceview.aspx"> 我爆料</a></li>--%>
					</ul>
				</div>
				<!--//row-->
			</div>
		</div>



    </form>
	
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>