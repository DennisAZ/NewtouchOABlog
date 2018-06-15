<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
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

<body>
<header id="header">
  <nav class="navbar navbar-inverse" role="banner">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand" href="index.jsp"><i class="fa fa-bolt"></i> NewtouchOA</a></a> </div>
      <div class="collapse navbar-collapse navbar-right">
        <ul class="nav navbar-nav">
          <li><a href="index.jsp">首页</a></li>
          <li><a href="about-us.jsp">源代码</a></li>
          <li><a href="services.jsp">文档</a></li>
          <li><a href="portfolio.jsp">产品</a></li>
           <li class="active"><a href="contact-us.jsp">社区</a></li>
          <!-- <li><a href="pricing.jsp">API</a></li> -->
         
        </ul>
      </div>
    </div>
    <!--/.container--> 
  </nav>
  <!--/nav--> 
  
</header>
<!--/header-->
<div class="color-border"> </div>
<section id="inner-page">
  <div class="container">
    <div class="center">
      <h2>加入我们(建设中!请稍后.....)</h2>
      <p class="lead">您的建议就是我们产品驱动的动力，我们期待您在使用我们的产品过程中给我们提供各种建议。.</p>
    </div>
    <div class="row contact_top">
      <div class="col-md-4 contact_details"> <i class="fa fa-map-marker fa-2x"></i>
        <p>地址,<br>
          	上海市浦东新区峨山路91弄98号陆家嘴软件园1号楼4F-6F</p>
      </div>
      <div class="col-md-4 contact_details"> <i class="fa fa-envelope-o fa-2x"></i>
        <p>newtouch@newtouch.cn</p>
      </div>
      <div class="col-md-4 contact_details"> <i class="fa fa-phone fa-2x"></i>
        <p>021-511 056 60</p>
      </div>
    </div>
    <!--/.row-->
    <div class="center">
      <h3>发邮件给我们</h3>
      <p class="lead">对于您的每一封邮件我们都会认真的回复.</p>
    </div>
    <div class="row">
      <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action=" ">
        <div class="col-sm-5 col-sm-offset-1">
          <div class="form-group">
            <label>Name *</label>
            <input type="text" name="name" class="form-control" required="required">
          </div>
          <div class="form-group">
            <label>Email *</label>
            <input type="email" name="email" class="form-control" required="required">
          </div>
          <div class="form-group">
            <label>Phone</label>
            <input type="number" class="form-control">
          </div>
          <div class="form-group">
            <label>Company Name</label>
            <input type="text" class="form-control">
          </div>
        </div>
        <div class="col-sm-5">
          <div class="form-group">
            <label>Subject *</label>
            <input type="text" name="subject" class="form-control" required="required">
          </div>
          <div class="form-group">
            <label>Message *</label>
            <textarea name="message" id="message" required class="form-control" rows="8"></textarea>
          </div>
          <div class="form-group">
            <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Send Message</button>
          </div>
        </div>
      </form>
    </div>
    <!--/.row--> 
  </div>
  <!--/.container--> 
  <br>
  <br>
</section>
<!--/#inner-page-->

<div class="color-border"> </div>
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-6"> 2018 NewtouchOA在线办公管理平台 <a href="https://cloud.newtouch.com/" target="_blank" title="上海新致">上海新致</a> - Collect from <a href="http://59.80.34.126:10202/NewtouchOA" title="新致OA" target="_blank">新致OA</a></div>
      <div class="col-sm-6">版权所有2011-2021 上海新致软件股份有限公司  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICP证：沪ICP备10012409号-1</div>
      </div>
    </div>
  </div>
</footer>
<!--/#footer--> 

<script src="js/jquery.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.prettyPhoto.js"></script> 
<script src="js/jquery.isotope.min.js"></script> 
<script src="js/main.js"></script>
</body>