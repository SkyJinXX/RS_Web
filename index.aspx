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
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
    <!-- //font-awesome icons -->
    <link href="style/wap.css?2" rel="stylesheet" type="text/css" />
    <!--line-->
    <link href="style/line.css" rel="stylesheet" type="text/css" />
    <link href="style/content.css" rel="stylesheet" type="text/css" />
    <link href="style/nav-total-left.css" rel="stylesheet" type="text/css" />
    <link href="style/button.css" rel="stylesheet" type="text/css" />

    <!-- chart -->
    <script src="js/Chart.js"></script>
    <!-- //chart -->
     <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/pageMore.js"></script>
    <script src="js/modernizr.custom.js"></script>
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
    <link href="style/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
	<title>首页</title>
    
</head>
<body class="cbp-spmenu-push cbp-spmenu-push-toright">
    <form id="form1" runat="server">

        <div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<img src="images/logo_2.gif" alt="" />
							
					</a>
				</div>
				<!--//logo-->
				<div class="header-right header-right-grid">
					<div class="profile_details_left"><!--notifications of menu start -->
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
									   <div class="user_img"><img src="images/1.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
										</div>
									   <div class="clearfix"></div>	
									</a></li>
									<li class="odd"><a href="#">
										<div class="user_img"><img src="images/2.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
										</div>
									  <div class="clearfix"></div>	
									</a></li>
									<li><a href="#">
									   <div class="user_img"><img src="images/3.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
										</div>
									   <div class="clearfix"></div>	
									</a></li>
									<li>
										<div class="notification_bottom">
											<a href="interests.html">See all messages</a>
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
											<div class="bar yellow" style="width:40%;"></div>
										</div>
									</a></li>
									<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
										   <div class="clearfix"></div>	
										</div>
										<div class="progress progress-striped active">
											 <div class="bar green" style="width:90%;"></div>
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
											<a href="#">See all pending tasks</a>
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
										<div class="user_img"><img src="images/2.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet</p>
										<p><span>1 hour ago</span></p>
										</div>
									  <div class="clearfix"></div>	
									 </a></li>
									 <li class="odd"><a href="#">
										<div class="user_img"><img src="images/1.png" alt=""></div>
									   <div class="notification_desc">
										<p>Lorem ipsum dolor amet </p>
										<p><span>1 hour ago</span></p>
										</div>
									   <div class="clearfix"></div>	
									 </a></li>
									 <li><a href="#">
										<div class="user_img"><img src="images/3.png" alt=""></div>
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
						<div class="clearfix"> </div>
					</div>
				</div>
				
				
				<div class="clearfix"> </div>
			</div>
			<!--search-box-->
            <div class="search-box">
                <asp:TextBox ID="searchtextbox" CssClass="searchtextbox" runat="server" placeholder="Search for..."></asp:TextBox>
                    
                <asp:Button ID="search" CssClass="searchButton" runat="server" Text="" OnClick="search_Click" />
                 
			</div>
				<!--//end-search-box-->
			<div class="header-right">
				
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/image/user.png" alt=""> </span> 
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
                                <li> <asp:Label ID="user_name" class="user-name" runat="server" Text="Username"></asp:Label></li> 
								<li> <a href="#"><i class="fa fa-cog"></i> 修改密码</a> </li> 
								<li> <a href="Userinformation.html"><i class="fa fa-user"></i> 个人信息</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> 注销</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<!--toggle button start-->
                <button id="showLeftPush" "><i></i></button>
				<!--toggle button end-->
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
        <div id="page-wrapper">
			<div class="main-page">
				
				<div class="classification">
					<ul>
						<li><i></i><a>科技</a></li>
						<li><i></i><a>娱乐</a></li>
						<li><i></i><a>体育</a></li>
						<li><i></i><a>游戏</a></li>
						<li><i></i><a>汽车</a></li>
						<li><i></i><a>国际</a></li>
						<li><i></i><a>军事</a></li>
						<li><i></i><a>财经</a></li>
						<li><i></i><a>时尚</a></li>
					</ul>
				</div>
				<!-- //four-grids -->
				<!--row-->
				<div class="message-left">
                    <div class="row">


                        <div class="col-md-6">
                            <div class="panel panel-widget">
                                <div class="panel-title">
                                    资讯1标题
								  <!--
                                  	作者：994920937@qq.com
                                  	时间：2018-03-24
                                  	描述：标签显示分类
                                  -->
                                    <ul class="panel-tools">
                                        <li><a class="icon minimise-tool"><i class="fa fa-minus"></i></a></li>
                                        <li><a class="icon expand-tool"><i class="fa fa-expand"></i></a></li>
                                        <li><a class="icon closed-tool"><i class="fa fa-times"></i></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body" style="display: block;">
                                    <!-- candlestick -->
                                    <div class="candlestick">

                                        <div id="example-8">
                                            <!--<span>资讯内容</span>-->
                                            <div class="content-left">
                                                图片
                                            </div>
                                            <div class="content-right">
                                                <a href="#">
                                                    <!--标签显示咨询内容-->
                                                    dasdasdasd
													scaasasasaasasassasaassaasads
													scaasasasaasasassasaassaasads
													scaasasasaasasassasaassaasads
                                                </a>
                                            </div>
                                        </div>
                                        <div class="sort">
                                            gdfgfd
                                        </div>
                                        <div class="isLikeButton">
                                            <input type="button" class="collect" value="收藏" />
                                            <div class="button">
                                                <input class="isLikeButton_like" type="button" value="" />
                                            </div>
                                            <div class="button">
                                                <input class="isLikeButton_dislike" type="button" value="" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //candlestick -->
                                </div>
                            </div>
                        </div>


                    </div>
				</div>
				<div class="nav-right">
					<ul>
						<li><i class="fa fa-heart" style="color: #8DB6CD;"></i><a href="#"> 兴趣标签</a></li>
						<li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a href="#"> 我的收藏</a></li>
						<li><a href="#">link3</a></li>
						<li><a href="#">link4</a></li>
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