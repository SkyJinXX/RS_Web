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
    <link href="style/custom.css" rel="stylesheet" type="text/css" />
    <link href="style/multi-switch.min.css" rel="stylesheet" type="text/css" />
    <link href="style/interests_notification.css" rel="stylesheet" type="text/css" />
    <link href="style/footer.css" rel="stylesheet" type="text/css" />
    
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
                        <div style="text-align: center;margin-bottom:3%;">
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="历史浏览资讯兴趣模型"></asp:Label>
                        </div>
                        <div class="line"></div>
                        <div class="interestBox">
                            <table>
                                <tr>
                                    <td>
                                        <i class="fa fa-film"></i><span>电影</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-child"></i><span>体育</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-money"></i><span>财经</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-newspaper-o"></i><span>新闻</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                </tr>
                                <tr style="height:1em;"></tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-smile-o"></i><span>搞笑</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-ravelry"></i><span>科普</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-gamepad"></i><span>游戏</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-hand-rock-o"></i><span>军事</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                </tr>
                                <tr style="height:1em;"></tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-television"></i><span>电视剧</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-car"></i><span>汽车</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-medkit"></i><span>健康</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-book"></i><span>读书</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                </tr>
                                <tr style="height:1em;"></tr>
                                <tr>
                                    <td>
                                        <i class="fa fa-users"></i><span>综艺</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-star"></i><span>明星</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                    <td>
                                        <i class="fa fa-area-chart"></i><span>风景</span>
                                    </td>
                                    <td>
                                        <input type="checkbox" class="multi-switch" value="0" />
                                    </td>
                                </tr>
                            </table>

                            <script src="js/jquery-2.1.1.min.js"></script>

                            <script src="src/multi-switch.js"></script>
                            <script>
                                $(document).ready(function () {
                                    $('.multi-switch').multiSwitch();
                                });
                            </script>
                        </div>
                    </div>
                </div>
				<div class="nav-right-one">
                    <div class="nav-right-one-title"><b>热门</b></div>
					<ul>
						<li><a href="#">若有小行星撞地球如何阻止?</a></li>
						<li><a href="#">美国学区给学校配备石头</a></li>
                        <li><a href="#">美国“生命大游行”呼吁严控枪支</a></li>
						<li><a href="#">京都酒店外籍游客入住率创新高</a></li>
						<li><a href="#">环球时报：中国既坚定又冷静</a></li>
						<li><a href="#">男子照看电瓶车后盗车</a></li>
					</ul>
				</div>
                <div class="nav-right-two">
					<ul>
						<li><i class="fa fa-codepen" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="interests.aspx"> 我的兴趣模型</a></li>
						<li><i class="fa fa-heart" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="interests.aspx"> 兴趣标签</a></li>
                        <li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="Collection.aspx"> 我的收藏</a></li>
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

        <script src="js/jquery.min.js" type="text/javascript"></script>
	    <script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="assets/js//jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="assets/js/custom.js"></script>
        <script src="js/jquery-2.1.1.min.js"></script>
	
	    <script src="js/multi-switch.js"></script>
    </form>
</body>
</html>
