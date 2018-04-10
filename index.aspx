<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /> 
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Baxster Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
    SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    
    <!-- Bootstrap Core CSS -->
    <link href="style/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="style/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <!-- font-awesome icons -->
    <link href="style/font-awesome.css" rel="stylesheet" /> 
    
    <link href="style/font-awesome.min.css" rel="stylesheet" /> 
    <!-- //font-awesome icons -->
    <link href="style/wap.css?2" rel="stylesheet" type="text/css" />
    <!--line-->
    <link href="style/line.css" rel="stylesheet" type="text/css" />
    <link href="style/content.css" rel="stylesheet" type="text/css" />
    <link href="style/nav-total-left.css" rel="stylesheet" type="text/css" />
    <link href="style/button.css" rel="stylesheet" type="text/css" />
    <link href="style/custom.css" rel="stylesheet" type="text/css" />
    <link href="style/index_home.css" rel="stylesheet" type="text/css" />
    <link href="style/footer.css" rel="stylesheet" type="text/css" />
    <link href="style/interests_notification.css" rel="stylesheet" type="text/css" />

    <!-- chart -->
    <script src="js/Chart.js"></script>
    <!-- //chart -->
     <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <!--webfonts-->
    <link href="style/fonts.css" rel="stylesheet" type="text/css" />
    <!--//webfonts--> 
    <!--animate-->
    <link href="style/animate.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/wow.min.js"></script>
	<script src="js/index.js"></script>
	<script>
        new WOW().init();
	</script>
    <!--//end-animate-->
    <!-- Metis Menu -->
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <!--//Metis Menu -->
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script src="js/bootstrap.min.js"></script>
	<script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/js/custom.js"></script>

	<title>首页</title>
    
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
                    <div class="profile_details_left-one">
                        <!--notifications of menu start -->
                        <ul class="nofitications-dropdown">
                            <li class="dropdown head-dpdn header-nav">
                                <a href="#" class="dropdown-toggle">推荐
                                </a>

                            </li>
                            <li class="dropdown head-dpdn header-nav">
                                <a href="#" class="dropdown-toggle">发现
                                </a>

                            </li>


                        </ul>
                        <div class="clearfix"></div>
                    </div>
                </div>


                <div class="clearfix"></div>
            </div>
            <!--search-box-->
            <div class="search-box">
                <input type="text" id="searchText" style="width: 100%; height: 30px;" placeholder="发现你的兴趣..." />

            </div>
            <div class="search-button">
                <input type="button" id="searchButton" style="height: 30px;" value="搜索" />

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
            <div class="clearfix"></div>
        </div>
        <div id="page-wrapper">
			<div class="main-page">
                <div class="home-left">
                    <!-- four-grids -->
                    <div class="row four-grids">
                        <div class="col-md-3 ticket-grid">
                            <a href="index_News.aspx">
                                <div id="Information" class="tickets">
                                    <div class="grid-left">
                                        <div class="book-icon">
                                            <i class="fa fa-globe" style="font-size: 4em;color:#5CACEE;"></i>
                                        </div>
                                    </div>
                                    <div class="grid-right">
                                        <h3>资讯</h3>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 ticket-grid">
                            <a href="index_food.aspx">
                                <div id="Food" class="tickets">
                                    <div class="grid-left">
                                        <div class="book-icon ">
                                            <i class="fa fa-cutlery" style="font-size: 4em;color:#FF8247;"></i>
                                        </div>
                                    </div>
                                    <div class="grid-right">
                                        <h3>美食</h3>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 ticket-grid">
                            <a href="index_amuse.aspx">
                                <div id="Playing" class="tickets">
                                    <div class="grid-left">
                                        <div class="book-icon">
                                            <i class="fa fa-universal-access" style="font-size: 4em;color:#551A8B;"></i>
                                        </div>
                                    </div>
                                    <div class="grid-right">
                                        <h3>游玩</h3>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 ticket-grid">
                            <a href="index_duanzi.aspx">
                                <div id="Interesting" class="tickets">
                                    <div class="grid-left">
                                        <div class="book-icon">
                                            <i class="fa fa-smile-o" style="font-size: 4em;color:#66CDAA"></i>
                                        </div>
                                    </div>
                                    <div class="grid-right">
                                        <h3>趣事</h3>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //four-grids -->
                    
                    <!--row-->
                    <div class="row">
                        <div class="col-md-7">
                            <div class="panel panel-widget">
                                <div class="panel-title">
                                    资讯
							      <ul class="panel-tools">
                                      <li></li>
                                      <li></li>
                                      <li></li>
                                  </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="demo-container">
                                        <div id="placeholder" class="demo-placeholder">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="panel panel-widget">
                                <div class="panel-title">
                                    美食
							  <ul class="panel-tools">
                                  <li></li>
                                  <li></li>
                                  <li></li>
                              </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="demo-container">
                                        <div id="placeholder1" class="demo-placeholder">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                    <!--//row-->
                    <!--row-->
                    <div class="row">
                        <div class="col-md-5 program-grid">
                            <div class="panel panel-widget">
                                <div class="panel-title">
                                    游玩
							  <ul class="panel-tools">
                                  <li></li>
                                  <li></li>
                                  <li></li>
                              </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="demo-container">
                                        <div id="placeholder2" class="demo-placeholder">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 monthly-grid">
                            <div class="panel panel-widget">
                                <div class="panel-title">
                                    趣事
							  <ul class="panel-tools">
                                  <li></li>
                                  <li></li>
                                  <li></li>
                              </ul>
                                </div>
                                <div class="panel-body">
                                    <div class="demo-container">
                                        <div id="placeholder3" class="demo-placeholder">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!--//row-->
                </div>
				<div class="nav-right-one">
                    <div class="nav-right-one-title"><b>热门</b></div>
					<ul>
						<li><a href="#">若有小行星撞地球如何阻止?</a></li>
						<li><a href="#">美国学区给学校配备石头</a></li>
                        <li><a href="#">美国“生命大游行”呼吁严控枪支</a></li>
						<li><a href="#">京都酒店外籍游客入住率创新高</a></li>
						<li><a href="#">环球时报：中国既坚定又冷静</a></li>
						<li><a href="#">李敖去世前亲笔信</a></li>
                        <li><a href="#">微信“红包赌”涉案近亿</a></li>
                        <li><a href="#">曹操墓新发现起争议</a></li>
                        <li><a href="#">北京发布空气重污染“橙警”</a></li>
                        <li><a href="#">一名中国籍船长在韩获刑1年半</a></li>
                        <li><a href="#">台北直升机轰鸣似军演</a></li>
                        <li><a href="#">北京首批市级传统村落公布</a></li>
					</ul>
				</div>

			</div>
		</div>
        <div class="footer">
            <div class="footer_content">
                <div class="footer_content_line">
                    <i class="fa fa-handshake-o"></i>一路相遇 一路相知 一路相行
                </div>
            </div>
        </div>
    </form>
</body>
</html>
