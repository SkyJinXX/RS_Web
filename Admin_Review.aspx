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
    <link href="style/user_imformation.css" rel="stylesheet" type="text/css" />
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
	<title>用户信息</title>
</head>
<body class="cbp-spmenu-push cbp-spmenu-push-toright">
    <form id="form1" runat="server">
        <div class="sticky-header header-section ">
			<div class="header-left">
				<!--logo -->
				<div class="logo">
					<a href="index.aspx">
						<img src="images/logo/logo_picture_white.gif" alt="logo" />
							
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
                <input type="text" id ="searchText" style="width:100%;height: 30px;" placeholder="发现你的兴趣..."/>
                
			</div>
            <div class="search-button">    
                <input type="button" id="searchButton" style="height: 30px;" value="搜索"/>
                 
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
                                    <img id="User_HeaderImager" runat="server" src="images/image/user.png" alt="" />
                                    <div class="clearfix"></div>
                                </div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> 修改密码</a> </li> 
								<li> <a href="user_imformation.aspx"><i class="fa fa-user"></i> 个人信息</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> 注销</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="username">
                    <asp:Label ID="user_name" class="user-name" runat="server" Text="昵称"></asp:Label>
                </div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
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
                       
                        </div>
                    </div>
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
