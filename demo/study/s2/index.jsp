﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>心得分享_个人博客 </title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="学习心得，使用心得" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="${pageContext.request.contextPath}/css/base.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/m.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easyfader.min.js"></script>
<script src="${pageContext.request.contextPath}/js/scrollReveal.js"></script>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
</head>
<body>
<header> 
  <!--menu begin-->
  <div class="menu">
    <nav class="nav" id="topnav">
      <h1 class="logo"><a href="${pageContext.request.contextPath}/Admin/">后台管理</a></h1>
      <li><a href="${pageContext.request.contextPath}/index.jsp">网站首页</a> </li>
      <li><a href="${pageContext.request.contextPath}/about.jsp">关于我</a> </li>
      <li><a href="${pageContext.request.contextPath}/study/">学无止境</a>
        <ul class="sub-nav">
          <li><a href="${pageContext.request.contextPath}/study/s1/">心得笔记</a></li>
          <li><a href="${pageContext.request.contextPath}/study/s2/">推荐工具</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/life/">慢生活</a></li>
      <li><a href="${pageContext.request.contextPath}/time.jsp">时间轴</a> </li>
      <li><a href="${pageContext.request.contextPath}/gbook.jsp">留言</a> </li>
     
      <!--search begin-->
      <div id="search_bar" class="search_bar">
        <form  id="searchform" action="[!--news.url--]e/search/index.php" method="post" name="searchform">
          <input class="input" placeholder="想搜点什么呢..." type="text" name="keyboard" id="keyboard">
          <input type="hidden" name="show" value="title" />
          <input type="hidden" name="tempid" value="1" />
          <input type="hidden" name="tbname" value="news">
          <input type="hidden" name="Submit" value="搜索" />
          <span class="search_ico"></span>
        </form>
      </div>
      <!--search end--> 
    </nav>
  </div>
  <!--menu end--> 
  
  
  <!--mnav begin-->
  <div id="mnav">
    <h2><a href="${pageContext.request.contextPath}/Admin/" class="mlogo">后台管理</a><span class="navicon"></span></h2>
    <dl class="list_dl">
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/index.jsp">网站首页</a> </dt>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/about.jsp">关于我</a> </dt>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/study/">学无止境</a> </dt>
      <dd class="list_dd">
        <ul>
        <li><a href="${pageContext.request.contextPath}/study/s1/">心得笔记</a></li>
          <li><a href="${pageContext.request.contextPath}/study/s2/">推荐工具</a></li>
         
        </ul>
      </dd>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/life/">慢生活</a> </dt>
      <dt class="list_dt"> <a href="${pageContext.request.contextPath}/time.jsp">时间轴</a> </dt>
     
    </dl>
  </div>
  <!--mnav end--> 
</header>
<div class="pagebg sh"></div>
<div class="container">
  <h1 class="t_nav"><span>好咖啡要和朋友一起品尝，好工具也要和同样喜欢它的人一起分享。 </span><a href="${pageContext.request.contextPath}/" class="n1">网站首页</a><a href="${pageContext.request.contextPath}/study/s1/index.jsp" class="n2">工具分享</a></h1>


<div class="share">
<ul>
 <li> <div class="shareli"><a href="https://pan.baidu.com/s/1QfnsxvctNIwlayI8DzfopA" target="_blank"> <i><img src="${pageContext.request.contextPath}/images/toppic01.jpg"></i>
      <h2><b>apache-commons 相关jar包  提取码：iddm</b></h2>
      <span>喜欢 | 666</span> </a></div> </li>
 <li> <div class="shareli"><a href="https://pan.baidu.com/s/1h_0JoTLG3dUFM6aFpYbWbQ" target="_blank"> <i><img src="${pageContext.request.contextPath}/images/toppic02.jpg"></i>
      <h2><b>数据库相关资料</b></h2>
      <span>喜欢 | 777</span> </a></div> </li>
 <li> <div class="shareli"><a href="https://pan.baidu.com/s/1o2FxFG4spvWquM6gvs3Rcg" target="_blank"> <i><img src="${pageContext.request.contextPath}/images/banner01.jpg"></i>
      <h2><b>js、jquery相关资料  提取码：gko3</b></h2>
      <span>喜欢 | 888</span> </a> </div> </li>
 <li> <div class="shareli"><a href="https://pan.baidu.com/s/1l-0g8FykFuQ2U1CdrseM8Q" target="_blank"> <i><img src="${pageContext.request.contextPath}/images/text01.jpg"></i>
      <h2><b>SSM相关知识  提取码：6z7g</b></h2>
      <span>喜欢 | 999</span> </a> </div> </li>
 
 
      

</ul>
</div>

<div class="pagelist"><a title="Total record">&nbsp;<b>45</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;<a href="/download/index_2.html">2</a>&nbsp;<a href="/download/index_2.html">下一页</a>&nbsp;<a href="/download/index_2.html">尾页</a></div>


</div>
<footer>
  <p>Design by <a href="#" target="_blank">赵流洋</a></p>
</footer>
<a href="${pageContext.request.contextPath}/study/s1/index.jsp" class="cd-top">Top</a>
</body>
</html>
