<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>关于我的成长之路</title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="个人简历成长" />
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

<div class="pagebg ab"> </div>
<div class="container">
  <h1 class="t_nav"><span>一个普通人的成长史</span><a href="${pageContext.request.contextPath}/index.jsp" class="n1">网站首页</a><a href="${pageContext.request.contextPath}/about.jsp" class="n2">关于我</a></h1>
  <div class="news_infos">
    <ul>
      <p>赵流洋，男，大三学生，从javaweb开始，开始java后端开发之路
         <br />
        <br />
        从几个月前的萌新，到现在网站开发的菜鸡，学的越多，越觉得自己知识的匮乏！
        <br />
        <br />
     成功没有多少秘诀，只有自己一步一步的敲代码！
        <br />
        <br />
       希望大家能给我的网站一些建议，可以加我QQ联系，或者留言</p>
      <br />
      <h2>About my blog</h2>
      &nbsp;
      <p>IP：47.107.82.254:8080/MyBlog 创建于2019年05月&nbsp;</p>
      <br />
      <p><a href="https://www.aliyun.com/">服务器：阿里云服务器&nbsp;&nbsp;</a></p>
      <br />
      
      <br />
      <p>程 序：java </p>
    </ul>
  </div>
  <div class="sidebar">
    <div class="about">
      <p class="avatar"> <img src="${pageContext.request.contextPath}/images/avatar.jpg" alt=""> </p>
      <p class="abname">localhost | 赵流洋</p>
      <p class="abposition">java后端开发的菜鸡</p>
      <p class="abtext">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;玩你大爷的开发网站！ </p>
    </div>
    <div class="weixin">
      <h2 class="hometitle">微信关注</h2>
      <ul>
        <img src="${pageContext.request.contextPath}/images/wx.jpg">
      </ul>
    </div>
  </div>
</div>
<footer>
  <p>Design by <a href="#" target="_blank">赵流洋</a></p>
</footer>
<a href="${pageContext.request.contextPath}/about.jsp" class="cd-top">Top</a>
</body>
</html>
