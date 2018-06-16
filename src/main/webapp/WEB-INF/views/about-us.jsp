<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NewtouchOA</title>
<meta name="description" content="">

<!-- core CSS -->
<jsp:include   page="/common/main.jsp" flush="true"/>
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
          <li><a href="../index.jsp">首页</a></li>
          <li class="active"><a href="${pageContext.request.contextPath}/openJsp/about-us">源代码</a></li>
          <li><a href="${pageContext.request.contextPath}/openJsp/services">文档</a></li>
            <li><a href="${pageContext.request.contextPath}/openJsp/portfolio">产品</a></li>
            <li><a href="${pageContext.request.contextPath}/openJsp/contact-us">社区</a></li>
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
<section id="get-started">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <h2>代码管理</h2>
        <p>以产品为主，项目为辅，产品带动项目的快速实施，项目促进产品的成熟与发展,提供高效的需求解决方案.</p>
        <a href="https://github.com/DennisAZ/NewtouchOA" class="btn btn-primary" target = "_blank">获取源码</a> </div>
    </div>
  </div>
  <!--/.container--> 
</section>
<section id="inner-page">
  <div class="container">
<!--     <div class="center">
      <h2>源码社区</h2>
      <p class="lead">本产品采用jSP+java为主要开发语言，运用MySQL5.6为数据库，可选oracle等主流数据库，可提供专业的定制开发，
      完美运行现有主要操作系统 如windows MAC OS.</p>
    </div> -->
    <div class="about-us">
      <div class="row">
        <div class="col-md-4 col-sm-6"><img src="${pageContext.request.contextPath}/images/about.png" class="img-responsive" alt=""/> </div>
        <!--/.col-md-4-->
        
        <div class="col-md-4 col-sm-6">
          <h3>我们是谁</h3>
          <p>上海新致软件有限公司成立于1994年，是一家高科技企业。2002年起至今每年被认定为“国家规划布局内重点软件企业”；2004年首批获得“A级中国软件欧美出口工程试点企业认定”，公司整体通过CMMI5评估。</p>
          <p>新致软件是一家信息技术服务供应商、多个行业提供咨询、设计、实施、测试、支持、培训等专业的解决方案.</p>
        </div>
        <!--/.col-md-4-->
        
        <div class="col-md-4 col-sm-6">
          <h3>我们的历史</h3>
          <p><strong>1994年6月4日</strong><br>
             	上海新致软件股份有限公司于1994年6月4日在上海市工商局登记成立，公司经营范围包括计算机软件开发、设计和制作，销售自产产品等</p>
          <p><strong>2014-2017</strong><br>
            	参与集团电信MSS项目，并获得用户好评</p>
          <p><strong>2015</strong><br>
               	 开始在全国部署数据分析项目，并参与开发财务相关数据分析项目建设.</p>
        </div>
        <!--/.col-md-4--> 
      </div>
      <!--/.row--> 
    </div>
  </div>
  <!--/.container--> 
</section>
<!--/inner-page-->



<section id="testimonials" class="service-item">
  <div class="container">
    <div class="center">
      <h2>我们的客户说什么</h2>
      <p class="lead">在新致软件全体员工的努力下，我公司多行业产品在用户心中得到一致的好评，为企业管理提供了完美的IT软件支持.</p>
    </div>
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="row testimonials">
          <div class="col-sm-4">
            <blockquote>
              <p class="clients-words">在与新致公司员工共同开发的数据分析项目为我们的日常企业管理提供的了强大的数据支撑，为我们的工作进展提供的有效的推进作用.</p>
              <span class="clients-name">- 电信行业某客户</span> <img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/images/testimonials/man1.jpg"> </blockquote>
          </div>
          <div class="col-sm-4">
            <blockquote>
              <p class="clients-words">软件是一个企业的软实力，新致公司所提供的软件简单实用，将复杂的问题简单化，易操作，安全性高.</p>
              <span class="clients-name">- 医疗行业某客户</span> <img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/images/testimonials/woman1.jpg"> </blockquote>
          </div>
          <div class="col-sm-4">
            <blockquote>
              <p  class="clients-words">新致公司完美的展现了"软件是门艺术"这句话，用实际行动告诉我们客户是上帝的软件开发思维模式</p>
              <span class="clients-name">- 金融行业某客户</span> <img class="img-circle img-thumbnail" src="${pageContext.request.contextPath}/images/testimonials/man1.jpg"> </blockquote>
          </div>
        </div>
        <!--/.row--> 
      </div>
      <!--/.col--> 
    </div>
    <!--/.row--> 
  </div>
  <!--/.container--> 
</section>
<!--/#testimonials-->

<!--/#get-started-->

<div class="color-border"> </div>
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-6"> 2018 NewtouchOA在线办公管理平台 <a href="https://cloud.newtouch.com/" target="_blank" title="上海新致">上海新致</a> - Collect from <a href="http://59.80.34.126:10202/NewtouchOA" title="新致OA" target="_blank">新致OA</a></div>
      <div class="col-sm-6">版权所有2011-2021 上海新致软件股份有限公司  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ICP证：沪ICP备10012409号-1</div>
    </div>
  </div>
</footer>
<!--/#footer--> 


</body>