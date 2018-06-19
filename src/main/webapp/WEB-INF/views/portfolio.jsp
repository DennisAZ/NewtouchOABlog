<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NewtouchOA</title>
<meta name="description" content="">

<!-- core CSS -->
<jsp:include page="/common/main.jsp" flush="true" />
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<!--/head-->
<body>
	<header id="header"> <nav class="navbar navbar-inverse"
		role="banner">
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
				<li><a href="../index.jsp">首页</a></li>
				<li><a
					href="${pageContext.request.contextPath}/openJsp/about-us">源代码</a></li>
				<li><a
					href="${pageContext.request.contextPath}/openJsp/services">文档</a></li>
				<li class="active"><a
					href="${pageContext.request.contextPath}/openJsp/portfolio">产品</a></li>
				<li><a
					href="${pageContext.request.contextPath}/openJsp/contact-us">社区</a></li>
				<li><a 
				    href="${pageContext.request.contextPath}/openJsp/pricing">博客</a></li>
			</ul>
		</div>
	</div>
	<!--/.container--> </nav> <!--/nav--> </header>
	<!--/header-->
	<div class="color-border"></div>
	<section id="inner-page">
	<div class="container">
		<div class="center">
			<h2>
				<a href="http://59.80.34.126:10202/NewtouchOA" target="_blank">进入
					NewtouchOA </a>
			</h2>
			<p class="lead">新致OA办公系统以"better work, better life（便捷工作
				美好生活）"理念为设计宗旨，以增加企业执行力与凝聚力为设计目标，将软件设计融于生活当中，将生活融入软件设计中去，因为我们坚信：为您更多地思考才能换来您最满意的笑容.</p>

		</div>
		<ul class="portfolio-filter text-center">
			<li><a class="btn btn-default active" href="#" data-filter="*">ALL</a></li>
			<li><a class="btn btn-default" href="#" data-filter=".web">设计</a></li>
			<li><a class="btn btn-default" href="#" data-filter=".apps">功能</a></li>
			<!-- <li><a class="btn btn-default" href="http://59.80.34.126:10202/NewtouchOA" target="_blank">进入产品</a></li> -->
		</ul>
		<!--/#portfolio-filter-->

		<div class="row">
			<div class="portfolio-items">
				<div class="portfolio-item web col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item1.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">安全稳定</a>
								</h3>
								<p>提供底层服务安全、数据传输安全、用户登录验证、角色权限分配、二次权限控制、流程经办权限、可写字段权限、加密字段控制、文档多级权限、等9大安全防护功能，多方面结合实现系统化的安全防护</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item1.jpg"
									rel="prettyPhoto" title=""><i class="fa fa-search"></i>
									View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item web col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item2.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">功能强大</a>
								</h3>
								<p>包括了电子邮件、即时通信、公告通知、日程管理、公文管理、工作任务、工作计划、办公用品管理、车辆管理、自定义工作流程、等多类办公管理功能，覆盖企业管理90%以上的网络办公事务.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item2.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item web col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item3.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">协同办公</a>
								</h3>
								<p>以企业内部现有的信息系统为基础，采用信息门户、数据交换、数据统计分析等技术，为企业建立先进而完善的信息资源管理系统，并提供全面、及时的管理数据，科学有效的解决企业的数据、业务和资源的信息孤岛问题.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item3.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item web col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item4.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">异地办公</a>
								</h3>
								<p>采用领先的B/S(浏览器/服务器)操作方式，使企业网络办公不受地域限制。OA系统融合了新致软件多年的研发经验，经受了多年的客户使用考验，融合现代企业先进的管理模式，运用先进的计算机技术，使得企业信息化管理更加科学高效.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item4.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item web col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item5.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">移动办公</a>
								</h3>
								<p>新致软件OA支持掌上设备、智能手机等进行移动办公，只要手机和掌上设备的智能操作系统是ISO 8.0和Android
									3.0以上的操作系统，都可以实现网络智能办公.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item5.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item web col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item6.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">简洁高效</a>
								</h3>
								<p>新致软件OA系统采用一键式安装，系统管理人员只需进行最简单的操作配置即可使用。系统功能符合科学的企业管理，采用人性化的菜单和模块分类，每一个普通用户无需专业培训，即可轻松的使用泛普软件OA办公系统。简约时尚的操作界面，使办公更加高效，最大限度的消除视觉疲劳.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item6.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item7.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">信息中心</a>
								</h3>
								<p>可以查看发送系统短消息、通知、新闻、公告、文件信息，可以在线查看各种消息所附带的附件文本信息，并也能够对各种消息进行回复、转发、删除等操作.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item7.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/full/item8.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">今日日程</a>
								</h3>
								<p>可以查看日待办日程，可以新建普通日程及周期性日程，可以进行日程办结处理.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item8.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->

				<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/full/item9.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">待办中心</a>
								</h3>
								<p>可以查看待我审批、待我阅读、待办日程信息，并且可以对待我审批表单进行审批（同意、不同意、退回上一步）及审批流转记录的查看.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item9.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item10.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">审批查看</a>
								</h3>
								<p>可以查看待我审批、经我审批信息。.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item10.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item11.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">文档中心</a>
								</h3>
								<p>可以按划分的实际目录查看文档中心及个人文件柜上传的文档信息，并可在线阅读文档的内容。</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item11.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>

				<div class="portfolio-item apps col-xs-12 col-sm-4 col-md-4">
					<div class="recent-work-wrap">
						<img class="img-responsive"
							src="${pageContext.request.contextPath}/images/portfolio/recent/item12.jpg"
							alt="">
						<div class="overlay">
							<div class="recent-work-inner">
								<h3>
									<a href="#">通讯录</a>
								</h3>
								<p>可以查看系统的公司、公共、个人通讯录，并且可以查看通讯录中任一人员的详细信息，并且可以自动识别电话号码进行打电话、发送手机短信功能（需手机支持）.</p>
								<a class="preview"
									href="${pageContext.request.contextPath}/images/portfolio/full/item12.jpg"
									rel="prettyPhoto"><i class="fa fa-search"></i> View</a>
							</div>
						</div>
					</div>
				</div>
				<!--/.portfolio-item-->
			</div>
		</div>
	</div>
	</section>
	<!--/#portfolio-item-->
	<section id="get-started">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h2>想讨论一个项目吗?</h2>
				<p>我们诚邀各位企业达人，IT专家加入我们的讨论区，为我们的项目提供各种意见及思路.</p>
				<a href="contact-us.jsp" class="btn btn-primary">加入我们</a>
			</div>
		</div>
	</div>
	<!--/.container--> </section>
	<!--/#get-started-->
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
	<!--/#footer-->

</body>
