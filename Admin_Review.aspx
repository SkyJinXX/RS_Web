<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Review.aspx.cs" Inherits="user_imformation" %>

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
    <link href="style/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="style/announceview.css" rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href="style/style.css" rel="stylesheet" type="text/css" />
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
    <link href="style/multi-switch.min.css" rel="stylesheet" type="text/css" />

    <!--webfonts-->
    <link href="style/fonts.css" rel="stylesheet" type="text/css">
    <!--//webfonts--> 
    <!--animate-->
    <link href="style/animate.css" rel="stylesheet" type="text/css" media="all">

    <link href="style/Admin_Review.css" rel="stylesheet" type="text/css" />
    <link href="style/footer.css" rel="stylesheet" type="text/css" />

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
	<title>审核资讯</title>
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
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">推荐
                                </a>

                            </li>
                            <li class="dropdown head-dpdn header-nav">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">发现
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
            <div class="clearfix"></div>
        </div>
        <div id="page-wrapper">
            <div class="main-page">
                <div class="messageBox">
                    <div class="artcle_message">
                        <div class="form-title">
                            <h4>审核</h4>
                        </div>
                        <div class="artcle_message_box">
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-text-width "></i> 标题</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control1" runat="server" placeholder="请输入标题" Enabled="False"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-bars "></i> 关键字</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control1" runat="server" TextMode="SingleLine" placeholder="请概括内容" Enabled="False"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 205px;">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-newspaper-o "></i> 内容</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control1" runat="server" TextMode="MultiLine" placeholder="请输入正文" Height="200px" Enabled="False"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-list-ol"></i> 类别</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox4" CssClass="form-control1" runat="server" TextMode="SingleLine" placeholder="请概括内容" Enabled="False"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group_save" style="height: 40px; text-align: center">
                                <asp:Button ID="Finish" runat="server" Text="通过审核" OnClick="Finish_Click"/>
                                <asp:Button ID="Cancel" runat="server" Text="否定审核" OnClick="Cancel_Click"/>
                            </div>
                       
                        </div>
                    </div>
                </div>
                <div class="nav-right-four">
                    <div class="nav-right-four-title"><b>待审核</b></div>
					<ul runat="server" id="remainToJudge">
						<%=str%>
					</ul>
				</div>
                <div class="footer">
                    Supported By W.I.C
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
