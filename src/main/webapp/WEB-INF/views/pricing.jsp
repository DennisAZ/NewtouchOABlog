<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NewtouchOA</title>
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
				<li><a
					href="${pageContext.request.contextPath}/openJsp/contact-us">社区</a></li>
				<li class="active"><a 
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
			<h2>Our Pricing</h2>
			<p class="lead">
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non
				odio sed eros tristique bibendum.<br> Morbi libero elit
				elementum quis faucibus ac, condimentum quis nibh.
			</p>
		</div>
		<div class="row">
			<div class="col-xs-12 col-md-4">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">Silver</h3>
					</div>
					<div class="panel-body">
						<div class="the-price">
							<h1>$249</h1>
						</div>
						<table class="table">
							<tr>
								<td>5 Pages</td>
							</tr>
							<tr class="active">
								<td>Extra pages: $25 each</td>
							</tr>
							<tr>
								<td>SEO ready</td>
							</tr>
							<tr class="active">
								<td>Blog ready</td>
							</tr>
							<tr>
								<td>Automatic backups</td>
							</tr>
							<tr class="active">
								<td>1 hour training</td>
							</tr>
						</table>
					</div>
					<div class="panel-footer">
						<a href="#" class="btn btn-success" role="button">Order Now</a>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h2 class="panel-title">Gold</h2>
						Our Most Popular Package
					</div>
					<div class="panel-body">
						<div class="the-price">
							<h1>$499</h1>
						</div>
						<table class="table">
							<tr>
								<td>10 Pages</td>
							</tr>
							<tr class="active">
								<td>Extra pages: $25 each</td>
							</tr>
							<tr>
								<td>SEO ready</td>
							</tr>
							<tr class="active">
								<td>Blog ready</td>
							</tr>
							<tr>
								<td>Automatic backups</td>
							</tr>
							<tr class="active">
								<td>1 hour training</td>
							</tr>
						</table>
					</div>
					<div class="panel-footer">
						<a href="#" class="btn btn-success" role="button">Order Now</a>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-4">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">Platinum</h3>
					</div>
					<div class="panel-body">
						<div class="the-price">
							<h1>$899</h1>
						</div>
						<table class="table">
							<tr>
								<td>20 Pages</td>
							</tr>
							<tr class="active">
								<td>Extra pages: $25 each</td>
							</tr>
							<tr>
								<td>SEO ready</td>
							</tr>
							<tr class="active">
								<td>Blog ready</td>
							</tr>
							<tr>
								<td>Automatic backups</td>
							</tr>
							<tr class="active">
								<td>1 hour training</td>
							</tr>
						</table>
					</div>
					<div class="panel-footer">
						<a href="#" class="btn btn-success" role="button">Order Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/container--> </section>
	<!--/pricing-page-->
	<section id="get-started">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h2>Got Questions ? We're Here to Help</h2>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget
					nisl vel justo suscipit ullamcorper sed at lacus.<br> Aliquam
					euismod nunc id eros sollicitudin interdum.
				</p>
				<a href="contact-us.jsp" class="btn btn-primary">Contact us</a>
			</div>
		</div>
	</div>
	<!--/.container--> </section>
	<!--/#get-started-->
	<div class="color-border"></div>

	<!--/#footer-->
</body>