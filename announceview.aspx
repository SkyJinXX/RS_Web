<%@ Page Language="C#" AutoEventWireup="true" CodeFile="announceview.aspx.cs" Inherits="announceview" %>
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

    <link href="style/announceview.css" rel="stylesheet" type="text/css" />
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

    <!--webfonts-->
    <link href="style/fonts.css" rel="stylesheet" type="text/css">
    <!--//webfonts--> 
    <!--animate-->
    <link href="style/animate.css" rel="stylesheet" type="text/css" media="all">
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
	
	
	<title>写文章</title>
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
                            <h4>我要爆料</h4>
                        </div>
                        <div class="artcle_message_box">
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-text-width "></i> 标题</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox1" CssClass="form-control1" runat="server" placeholder="请输入标题"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-bars "></i> 关键字</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox3" CssClass="form-control1" runat="server" TextMode="SingleLine" placeholder="请概括内容"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 205px;">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-newspaper-o "></i> 内容</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:TextBox ID="TextBox2" CssClass="form-control1" runat="server" TextMode="MultiLine" placeholder="请输入正文" Height="200px"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition"><i class="fa fa-list-ol"></i> 类别</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control1_artcle" runat="server" Height="25px" Width="147px">
                                            <asp:ListItem Value="资讯类别"> </asp:ListItem>
                                            <asp:ListItem Value="娱乐">娱乐</asp:ListItem>
                                            <asp:ListItem Value="游戏">游戏</asp:ListItem>
                                            <asp:ListItem Value="体育">体育</asp:ListItem>
                                            <asp:ListItem Value="趣事">趣事</asp:ListItem>
                                            <asp:ListItem Value="美食">美食</asp:ListItem>
                                            <asp:ListItem Value="生活">生活</asp:ListItem>
                                            <asp:ListItem Value="时尚">时尚</asp:ListItem>
                                            <asp:ListItem Value="文化">文化</asp:ListItem>
                                            <asp:ListItem Value="环境">环境</asp:ListItem>
                                            <asp:ListItem Value="经济">经济</asp:ListItem>
                                            <asp:ListItem Value="政治">政治</asp:ListItem>
                                            <asp:ListItem Value="教育">教育</asp:ListItem>
                                            <asp:ListItem Value="科技">科技</asp:ListItem>
                                            <asp:ListItem Value="精神">精神</asp:ListItem>
                                            <asp:ListItem Value="军事">军事</asp:ListItem>
                                            <asp:ListItem Value="环境">环境</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="height: 40px">
                                <label class="col-md-artcle-label control-label artcle_labelPosition" style="margin-top:0.8em;"><i class="fa fa-picture-o "></i> 上传图片</label>
                                <div class="col-md-8 artcle_text">
                                    <div class="input-group artcle-input-group">
                                        <asp:FileUpload ID="FileUpload1" CssClass="form-control1_artcle" runat="server" Style="width: 15em; height: auto" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group_save" style="height: 40px; text-align: center">
                                <asp:Button ID="Upload" runat="server" Text="提交" OnClick="Upload_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="messageBox">
                    <div class="artcle_message">
                        <div class="form-title">
                            <h4>已写文章</h4>
                        </div>
                        <div class="artcle_message_box">
                            <asp:Label ID="Label3" runat="server" Text="Label" Enabled="False"></asp:Label>
                        </div>
                    </div>
                </div>
				<div class="nav-right-one">
                    <div class="nav-right-one-title"><b>热门</b></div>
					<ul>
						<li><a class="nav-right-one_a_after" href="view_News.aspx?Nid=96" id="a" runat="server">全国优秀民族歌剧展演</a></li>
						<li><a class="nav-right-one_a_after" href="view_News.aspx?Nid=98" id="b" runat="server">专访理查德·弗兰纳根</a></li>
                        <li><a class="nav-right-one_a_after" href="view_News.aspx?Nid=85" id="c" runat="server">儿童邪典片流入中国毒害儿童</a></li>
						<li><a class="nav-right-one_a_after" href="view_News.aspx?Nid=79" id="d" runat="server">北京的无雪之冬</a></li>
						<li><a class="nav-right-one_a_after" href="view_News.aspx?Nid=64" id="h" runat="server">新华社评美301调查</a></li>
                        <li><a class="nav-right-one_a_after" href="view_News.aspx?Nid=62" id="f" runat="server">我们要保护人类和星球</a></li>
					</ul>
				</div>
                <div class="nav-right-two">
					<ul>
						<li><i class="fa fa-codepen" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="#"> 我的兴趣模型</a></li>
						<li><i class="fa fa-heart" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="#"> 兴趣标签</a></li>
                        <li><i class="fa fa-tasks" style="color: #8DB6CD;"></i><a class="nav-right-two_a_after" href="#"> 我的收藏</a></li>
					</ul>
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