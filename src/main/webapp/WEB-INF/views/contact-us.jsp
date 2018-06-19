<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NewtouchOA</title>

<style type="text/css">
.one {
	width: 70%;
	float: left;
	box-sizing: border-box;
}

.two {
	width: 25%;
	float: right;
	box-sizing: border-box;
}
</style>
<meta name="description" content="">

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
				<li><a
					href="${pageContext.request.contextPath}/openJsp/portfolio">产品</a></li>
				<li class="active"><a
					href="${pageContext.request.contextPath}/openJsp/contact-us">社区</a></li>
				<li><a
					href="${pageContext.request.contextPath}/openJsp/pricing">博客</a></li>

			</ul>
		</div>
	</div>
	<!--/.container--> </nav> <!--/nav--> </header>
	<!--/header-->
	<div class="color-border"></div>

	<section id="middle">
	<div class="container">
		<div class="row">

			<div class = "one">  <!-- style="width: 70%; float: left" -->
				<div class="accordion">
					<h3>优秀文章 <i class = "fa pull-right"> <a title="/" href="../Community/indexCommunity.jsp" target="_blank">查看更多</a></i></h3>
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
											<p align="right"><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a></p>
											<p class="dateview"><span>2018-11-04</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>作者：杨青</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>个人博客：[<a href="/news/life/">程序人生</a>]</span></p>
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
								<div class="panel-body">系统用户界面的设计采用Web2.0用户界面设计技术，界面根据用户需求灵活更改（增强标签分类特性），注重用户体验，使系统各项功能易见、易学、易用、易维护、易管理
								<br><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a>
								</div>
								
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
								<br><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a>
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
								<br><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion1" href="#collapseFour2"> 产品易用性怎么样?
										<i class="fa fa-angle-right pull-right"></i>
									</a>
								</h3>
							</div>
							<div id="collapseFour2" class="panel-collapse collapse">
								<div class="panel-body">系统用户界面的设计采用Web2.0用户界面设计技术，界面根据用户需求灵活更改（增强标签分类特性），注重用户体验，使系统各项功能易见、易学、易用、易维护、易管理
								<br><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a>
								</div>
								
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion1" href="#collapseFour3">
										大并发能力支撑能力如何? <i class="fa fa-angle-right pull-right"></i>
									</a>
								</h3>
							</div>
							<div id="collapseFour3" class="panel-collapse collapse">
								<div class="panel-body">作为集团化、多组织、大用户的单位，OA软件系统的开发设计，应该支持应用和数据库等多重负载均衡能力，支持附件服务器和数据库服务器分离技术，从而支持数万用户同时在线和同时操作的能力，不会因为用户数的增长或者信息量的增长，而导致系统响应能力下降.
								<br><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a>
								</div>
							</div>
						</div>
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<a class="accordion-toggle" data-toggle="collapse"
										data-parent="#accordion1" href="#collapseFour4">
										OA办公系统作用的作用是啥? <i class="fa fa-angle-right pull-right"></i>
									</a>
								</h3>
							</div>
							<div id="collapseFour4" class="panel-collapse collapse">
								<div class="panel-body">企业的核心竞争力源自单位对内外部资源的有效利用，对它们之间的关系进行协调，最大限度的发挥所有资源的作用，并用系统的观点，在整个系统价值最大化的基础上来发挥各个资源的作用，使资源的运作产生协同效用，因此可通过协同办公系统打造单位的核心竞争力.
								<br><a title="/" href="/" target="_blank" class="readmore">阅读全文>></a>
								</div>
							</div>
						</div>
					</div>
					<!--/#accordion1-->
				</div>
			</div>

			<div class = "two" >  <!-- class="float:none" -->
			<div class="weather"><iframe width="250" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe></div>
			<br>
				<h3>最新文章 </h3>
				<br>
				<div class="media">
					<div class="media-body">
						<h3 class="media-heading">400多个快乐客户</h3>
						上海新致在全国拥有多个客户，我们致力于为客户提供简单好用灵活的软件系统.
					</div>
				</div>
				<br>
				<div class="media">
					<div class="media-body">
						<h3 class="media-heading">1000多个项目完成</h3>
						截至目前我们在全国累计完成及正在开发的项目达1000多个.
					</div>
				</div>
				<br>
				<div class="media">
					<div class="media-body">
						<h3 class="media-heading">获得多项大奖</h3>
						在软件行业多次引领标准，获得多项大奖，并多次得到各地客户的一致好评
					</div>
				</div>
			</div>	    	
		</div>
		<!--/.row-->
	</div>
	<!--/.container--> </section>
	<div class="color-border"></div>
	<section id="middle">
	<div class="container">
		<div class="row contact_top">
			<div class="col-md-4 contact_details" style="padding: 10px">
				<i class="fa fa-map-marker fa-2x"></i>
				<p>
					地址,<br> 上海市浦东新区峨山路91弄98号陆家嘴软件园1号楼4F-6F
				</p>
			</div>
			<div class="col-md-4 contact_details">
				<i class="fa fa-envelope-o fa-2x"></i>
				<p>newtouch@newtouch.cn</p>
			</div>
			<div class="col-md-4 contact_details">
				<i class="fa fa-phone fa-2x"></i>
				<p>021-511 056 60</p>
			</div>
		</div>
		<!--/.row-->
		<div class="center" style="padding-bottom: 0px">
			<h3>留言给我们</h3>
			<!-- <p class="lead">对于您的每一封留言我们都会认真的回复.</p> -->
		</div>
		<div class="row" style="line-height: 11px">
			<form id="main-contact-form" class="contact-form" name="contact-form"
				method="post"
				action="${pageContext.request.contextPath }/send/information.do">
				<div class="col-sm-5 col-sm-offset-1">
					<div class="form-group">
						<label>Title *</label> <input type="text" name="name"
							class="form-control" required="required">
					</div>
					<div class="form-group">
						<label>Email *</label> <input type="email" name="email"
							class="form-control" required="required">
					</div>
					<div class="form-group">
						<label>Phone</label> <input type="number" name="Phone"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Company Name</label> <input type="text" name="companyName"
							class="form-control">
					</div>
				</div>
				<div class="col-sm-5">
					<div class="form-group">
						<label>Subject *</label> <input type="text" name="subject"
							class="form-control" required="required">
					</div>
					<div class="form-group">
						<label>Message *</label>
						<textarea name="message" id="message" required
							class="form-control" rows="8"></textarea>
					</div>
					<div class="form-group">
						<button type="submit" name="submit" class="btn btn-primary btn-lg"
							required="required" style="padding: 7px 10px !important;"
							!implement>Send Message</button>
					</div>
				</div>
			</form>
		</div>
		<!--/.row-->
	</div>
	<!--/.container--> <br>
	<br>
	</section>
	<!--/#inner-page-->

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
	</div>
	</footer>
	<!--/#footer-->

</body>