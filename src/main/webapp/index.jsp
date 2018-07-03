<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/13
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NewtouchOA</title>
<meta name="description" content="">

<!-- core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
</head>
<!--/head-->

<body class="homepage">
	<header id="header">
		<nav class="navbar navbar-inverse" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><i class="fa fa-bolt"></i>
						NewtouchOA</a></a>
				</div>
				<div class="collapse navbar-collapse navbar-right">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp">首页</a></li>
						<li><a
							href="${pageContext.request.contextPath}/openJsp/about-us">源代码</a></li>
						<li><a
							href="${pageContext.request.contextPath}/openJsp/services">文档</a></li>
						<li><a
							href="${pageContext.request.contextPath}/openJsp/portfolio">产品</a></li>
						<li><a
							href="${pageContext.request.contextPath}/openJsp/contact-us">社区</a></li>
						<li><a 
				    		href="${pageContext.request.contextPath}/openJsp/pricing">博客</a></li>
					</ul>
				</div>
			</div>
			<!--/.container-->
		</nav>
		<!--/nav-->

	</header>
	<!--/header-->

	
	<!--/#main-slider-->
	<div class="color-border"></div>
	<section id="feature">
		<div class="container">
			<div class="center">
				<h2>特色服务</h2>
				<p class="lead">
					50+功能模块、全面协同办公<br> 50+电子流程、全自动规范运作、24小时移动访问，管理装进口袋
				</p>
			</div>
			<div class="row">
				<div class="features">
					<div class="col-md-4 col-sm-6">
						<div class="feature-wrap">
							<i class="fa fa-desktop"></i>
							<h2>网络开发</h2>
							<h3>网络分布式开发模式，集百家之所长，融百家之所思，扬百家之所名.</h3>
						</div>
					</div>
					<!--/.col-md-4-->

					<div class="col-md-4 col-sm-6">
						<div class="feature-wrap">
							<i class="fa fa-cogs"></i>
							<h2>数据分析</h2>
							<h3>产品融入时下最流行的大数据思维模式，并采用注智、分析为管理决策提供数据依据</h3>
						</div>
					</div>
					<!--/.col-md-4-->

					<div class="col-md-4 col-sm-6">
						<div class="feature-wrap">
							<i class="fa fa-rocket"></i>
							<h2>品牌 & 专业</h2>
							<h3>融合市场易用的大部分品牌，集合专业的办公自动化产品顾问，打造最流行，最简单实用产品.</h3>
						</div>
					</div>
					<!--/.col-md-4-->
				</div>
				<!--/.services-->
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#feature-->
	<div class="color-border"></div>
	<section id="middle">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h3>关于我们的一些事实</h3>
					<br>
					<div class="media">
						<i class="fa fa-smile-o pull-left fa-3x"></i>
						<div class="media-body">
							<h3 class="media-heading">400多个快乐客户</h3>
							上海新致在全国拥有多个客户，我们致力于为客户提供简单好用灵活的软件系统.
						</div>
					</div>
					<br>
					<div class="media">
						<i class="fa fa-check-square-o pull-left fa-3x"></i>
						<div class="media-body">
							<h3 class="media-heading">1000多个项目完成</h3>
							截至目前我们在全国累计完成及正在开发的项目达1000多个.
						</div>
					</div>
					<br>
					<div class="media">
						<i class="fa fa-trophy pull-left fa-3x"></i>
						<div class="media-body">
							<h3 class="media-heading">获得多项大奖</h3>
							在软件行业多次引领标准，获得多项大奖，并多次得到各地客户的一致好评
						</div>
					</div>
				</div>
				<!--/.col-sm-6-->

				<div class="col-sm-6">
					<div class="accordion">
						<h3>问 & 答</h3>
						<br>
						<div class="panel-group" id="accordion1">
							<div class="panel panel-default">
								<div class="panel-heading active">
									<h3 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion1" href="#collapseOne1"> 网络产品安全吗?
											<i class="fa fa-angle-right pull-right"></i>
										</a>
									</h3>
								</div>
								<div id="collapseOne1" class="panel-collapse collapse in">
									<div class="panel-body">
										<div class="media accordion-inner">
											<div class="media-body">我们的架构设计考虑安全性要求，平台软件达到安全设计标准.
												支持各种容灾的软硬件设备的使用等。提供完善的日志功能，能够记录系统使用人员的关键操作，保证系统应用的安全</div>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion1" href="#collapseTwo1"> 产品易用性怎么样?
											<i class="fa fa-angle-right pull-right"></i>
										</a>
									</h3>
								</div>
								<div id="collapseTwo1" class="panel-collapse collapse">
									<div class="panel-body">系统用户界面的设计采用Web2.0用户界面设计技术，界面根据用户需求灵活更改（增强标签分类特性），注重用户体验，使系统各项功能易见、易学、易用、易维护、易管理</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion1" href="#collapseThree1">
											大并发能力支撑能力如何? <i class="fa fa-angle-right pull-right"></i>
										</a>
									</h3>
								</div>
								<div id="collapseThree1" class="panel-collapse collapse">
									<div class="panel-body">作为集团化、多组织、大用户的单位，OA软件系统的开发设计，应该支持应用和数据库等多重负载均衡能力，支持附件服务器和数据库服务器分离技术，从而支持数万用户同时在线和同时操作的能力，不会因为用户数的增长或者信息量的增长，而导致系统响应能力下降.
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse"
											data-parent="#accordion1" href="#collapseFour1">
											OA办公系统作用的作用是啥? <i class="fa fa-angle-right pull-right"></i>
										</a>
									</h3>
								</div>
								<div id="collapseFour1" class="panel-collapse collapse">
									<div class="panel-body">企业的核心竞争力源自单位对内外部资源的有效利用，对它们之间的关系进行协调，最大限度的发挥所有资源的作用，并用系统的观点，在整个系统价值最大化的基础上来发挥各个资源的作用，使资源的运作产生协同效用，因此可通过协同办公系统打造单位的核心竞争力.
									</div>
								</div>
							</div>
						</div>
						<!--/#accordion1-->
					</div>
				</div>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#middle-->
	<div class="color-border"></div>
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					2018 NewtouchOA在线办公管理平台 <a href="https://cloud.newtouch.com/"
						target="_blank" title="上海新致">上海新致</a> - Collect from <a
						href="http://59.80.34.126:10202/NewtouchOA" title="新致OA"
						target="_blank">新致OA</a>
				</div>
				<div class="col-sm-6">版权所有2011-2021 上海新致软件股份有限公司
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICP证：沪ICP备10012409号-1</div>
			</div>
		</div>
	</footer>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/jquery.isotope.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/echarts.js"></script>
</body>
</html>
