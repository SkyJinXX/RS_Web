<%@ Page Language="C#" AutoEventWireup="true" CodeFile="interests.aspx.cs" Inherits="interests" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
    <link href="style/nav-total-left.css" rel="stylesheet" type="text/css" />
    <link href="style/button.css" rel="stylesheet" type="text/css" />
    <link href="style/interests.css" rel="stylesheet" type="text/css" />
    <link href="style/custom.css" rel="stylesheet">
    <!--webfonts-->
    <link href="style/fonts.css" rel="stylesheet" type="text/css">
    <!--//webfonts--> 
    <!--animate-->
    <link href="style/animate.css" rel="stylesheet" type="text/css" media="all">

    <!-- chart -->
    <script src="js/Chart.js"></script>
    <!-- //chart -->
     <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/wow.min.js"></script>
	<script>
        new WOW().init();
	</script>
    <!--//end-animate-->
    <!-- Metis Menu -->
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <!--//Metis Menu -->
	
	
	<title>兴趣标签</title>
</head>
<body class="cbp-spmenu-push cbp-spmenu-push-toright">
    <form id="form1" runat="server">
        <div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="index.aspx">
						<img src="images/logo_2.gif" alt="" />
							
					</a>
				</div>
				<!--//logo-->
				<div class="header-right header-right-grid">
					<div class="profile_details_left"><!--notifications of menu start -->
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
                <asp:TextBox ID="searchtextbox" CssClass="searchtextbox" runat="server" placeholder="Search for..."></asp:TextBox>
                    
                <asp:Button ID="search" CssClass="searchButton" runat="server" Text="" OnClick="search_Click" />
                 
			</div>
			<!--//end-search-box-->
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
								<li> <a href="user_imformation.aspx"><i class="fa fa-user"></i> 个人信息</a> </li> 
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
                <div class="messageBox">
                    <div class="message">
                        <div style="text-align: center">
                            <asp:Label ID="Label1" CssClass="text_title1" runat="server" Text="最近浏览资讯兴趣方向"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="text" runat="server" Text="科技 游戏"></asp:TextBox>
                        </div>
                        <br />
                        <div style="text-align: center">
                            <asp:Chart ID="Chart1" runat="server" BackColor="ActiveBorder" BorderlineColor="Transparent" Height="284px" OnLoad="Chart1_Load" Width="600px">
                                <Series>
                                    <asp:Series Name="Series1" ChartArea="ChartArea1" ChartType="Pie" IsValueShownAsLabel="True" Label="#VALX:#VAL%" Legend="Legend1"></asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Enabled="False" Name="Legend1">
                                    </asp:Legend>
                                </Legends>
                            </asp:Chart>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=USERUSE-04UKSUB\SQLEXPRESS;Initial Catalog=recommendedsystem;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Uid], [Sum] FROM [U_L]"></asp:SqlDataSource>

                        </div>
                        <div style="text-align: center">
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="历史浏览资讯兴趣模型"></asp:Label>
                        </div>
                        <div class="interestBox">
                            兴趣标签
                        </div>
                    </div>
                </div>
				<div class="nav-right-one">
                    <div class="nav-right-one-title">热门</div>
					<ul>
						<li><a href="#"> link1</a></li>
						<li><a href="#"> link2</a></li>
                        <li><a href="#"> link3</a></li>
						<li><a href="#"> link4</a></li>
						<li><a href="#"> link5</a></li>
					</ul>
				</div>
                <div class="nav-right-two">
					<ul>
						<li><i></i><a href="#">我的兴趣模型</a></li>
						<li><i class="fa fa-heart" style="color: #8DB6CD;"></i><a href="#"> 兴趣标签</a></li>
						<li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a href="#"> 我的收藏</a></li>
						<li><a href="#">link3</a></li>
						<li><a href="#">link4</a></li>
					</ul>
				</div>
			</div>
		</div>

        <script src="js/jquery.min.js" type="text/javascript"></script>
	    <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="assets/js/custom.js"></script>
    </form>
</body>
</html>
