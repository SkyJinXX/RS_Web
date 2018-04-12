<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index_duanzi.aspx.cs" Inherits="index" %>

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
    <link href="style/duanzi_index.css" rel="stylesheet" type="text/css"/>

    <!-- chart -->
    <script src="js/Chart.js"></script>
    <!-- //chart -->
     <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <script src="js/DuanziShow.js"></script>
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
	<title>奇闻趣事</title>
    
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
                            <li class="notification_header_li">
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-film"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>电影</span>
                                    </div>
                                </div>
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-child"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>体育</span>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li class="notification_header_li">
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>财经</span>
                                    </div>
                                </div>
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-newspaper-o"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>新闻</span>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li class="notification_header_li">
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-smile-o"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>搞笑</span>
                                    </div>
                                </div>
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-hand-rock-o"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>军事</span>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li class="notification_header_li">
                                <div class="notification_header_line">
                                    <div class="user_img">
                                        <i class="fa fa-gamepad"></i>
                                    </div>
                                    <div class="notification_desc">
                                        <span>游戏</span>
                                    </div>
                                </div>
                                <div class="notification_header_line">
                                    <div class="notification_desc">
                                        <span>...</span>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="notification_bottom">
                                    <a href="interests.aspx">查看所有兴趣标签</a>
                                </div>
                            </li>
                        </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-tasks"></i><span class="badge blue1">...</span>
                        </a>
                        <ul class="dropdown-menu anti-dropdown-menu" id="collection_menu">
                            <li>
                                <div class="notification_header">
                                    <h3>收藏的资讯 </h3>
                                </div>
                            </li>

                        </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-map-marker"></i><span class="badge blue">...</span>
                            </a>
                            <ul class="dropdown-menu anti-dropdown-menu">
                                <li>
                                    <div class="notification_header">
                                        <h3>我的定位</h3>
                                    </div>
                                </li>
                                <li style="width: 60%;margin:auto;">
                                    <div class="location_icon">
                                        <i class="fa fa-street-view"></i>
                                    </div>
                                    <div class="location"></div>
                                    <div class="clearfix"></div>
                                </li>
                                <li>
                                    <div class="notification_bottom">
                                        
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
                            <li><a href="findPassword.aspx"><i class="fa fa-cog"></i>修改密码</a> </li>
                            <li><a href="user_imformation.aspx"><i class="fa fa-user"></i>个人信息</a> </li>
                            <li><a href="login.aspx"><i class="fa fa-sign-out"></i>注销</a> </li>
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
						<li><i></i><a class="classification_type" href="#"><b>地球家园</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>宇宙奥秘</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>奇趣动物</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>未解之谜</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>科学探秘</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>灵异恐怖</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>考古发现</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>历史真相</b></a></li>
						<li><i></i><a class="classification_type" href="#"><b>战史风云</b></a></li>
                        <li><i></i><a class="classification_type" href="#"><b>野史逸闻</b></a></li>
                        <li><i></i><a class="classification_type" href="#"><b>名人轶事</b></a></li>
					</ul>
				</div>
				<!-- //four-grids -->
				<!--row-->
				<div class="message-left">
					<div class="row">			
                        
					</div>
					
				</div>
                <div class="nav-right-one">
                    <div class="nav-right-one-title">热门</div>
					<ul>
						<li><a class="nav-right-one_a_after" href="#" id="a" runat="server"> 英男子巴厘岛度假遭剑鱼刺入颈部</a></li>
						<li><a class="nav-right-one_a_after" href="#" id="b" runat="server">法国发生森林大火致上万人撤离  </a></li>
                        <li><a class="nav-right-one_a_after" href="#" id="c" runat="server"> 日本发明自动洗澡机 懒出了巅峰</a></li>
						<li><a class="nav-right-one_a_after" href="#" id="d" runat="server"> 黑洞吞噬物质，讲究“细嚼慢咽”</a></li>
						<li><a class="nav-right-one_a_after" href="#" id="h" runat="server"> 宇宙是个全息图？实验观测宇宙</a></li>
                        <li><a class="nav-right-one_a_after" href="#" id="f" runat="server"> 已灭绝的猛犸巨象或可复活</a></li>
					</ul>
				</div>
				<div class="nav-right-two">
					<ul>
						<li><i class="fa fa-codepen" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="interests.aspx"> 我的兴趣模型</a></li>
						<li><i class="fa fa-heart" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="interests.aspx"> 兴趣标签</a></li>
                        <li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="Collection.aspx"> 我的收藏</a></li>
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