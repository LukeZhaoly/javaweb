<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>慢生活_个人博客 </title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="生活就像一场电影，需要你本色出演" />
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
  <h1 class="t_nav"><span>慢生活，不是懒惰，放慢速度不是拖延时间，而是让我们在生活中寻找到平衡。</span><a href="${pageContext.request.contextPath}/" class="n1">网站首页</a><a href="${pageContext.request.contextPath}/" class="n2">慢生活</a></h1>
  <!--blogsbox begin-->
  <div class="blogsbox">
    <div class="blogs" data-scroll-reveal="enter bottom over 1s" >
      <h3 class="blogtitle"><a href="${pageContext.request.contextPath }/life/1.jsp" target="_blank">秋收冬藏，冷暖自知</a></h3>
      <span class="blogpic"><a href="#"><img src="${pageContext.request.contextPath}/images/toppic01.jpg" alt=""></a></span>
      <p class="blogtext">今天又是苦涩的一天</p>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">zly</a></li>
          <li class="lmname"><a href="/">学无止境</a></li>
          <li class="timer">2018-5-13</li>
          <li class="view"><span>34567</span>已阅读</li>
          <li class="like">9999</li>
        </ul>
      </div>
    </div>
   
   
    
    <div class="pagelist"><a title="Total record">&nbsp;<b>45</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;<a href="/download/index_2.html">2</a>&nbsp;<a href="/download/index_2.html">下一页</a>&nbsp;<a href="/download/index_2.html">尾页</a></div>
    
  </div>
  <!--blogsbox end-->
  <div class="sidebar">
    <div class="zhuanti">
       <h2 class="hometitle">特别推荐</h2>
      <ul>
        <li> <i><img src="${pageContext.request.contextPath}/images/banner03.jpg"></i>
          <p>java多线程相关 <span><a href="https://www.cnblogs.com/langtianya/p/3874019.html">阅读</a></span> </p>
        </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/b04.jpg"></i>
          <p>spring源码解读 <span><a href="https://www.cnblogs.com/ITtangtang/p/3978349.html">阅读</a></span></p>
        </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/b05.jpg"></i>
          <p>java后端开发学习顺序<span><a href="https://www.cnblogs.com/caoleiCoding/p/6170555.html">阅读</a></span></p>
        </li>
      </ul>
    </div>
    <div class="tuijian">
      <h2 class="hometitle">推荐文章</h2>
      <ul class="tjpic">
        <i><img src="${pageContext.request.contextPath}/images/toppic01.jpg"></i>
        <p><a href="http://www.gulixueyuan.com/course/309">java核心技术视频</a></p>
      </ul>
      <ul class="sidenews">
        <li> <i><img src="${pageContext.request.contextPath}/images/toppic01.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/201">MySQL 数据库相关操作</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/toppic02.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/60">js相关学习</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/v1.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/193">javaweb学习</a></p>
          <span>2018-05-13</span> </li>
        <li> <i><img src="${pageContext.request.contextPath}/images/v2.jpg"></i>
          <p><a href="http://www.gulixueyuan.com/course/46">spring相关学习</a></p>
          <span>2018-05-13</span> </li>
      </ul>
    </div>
    
    
    <div class="cloud">
      <h2 class="hometitle">标签云</h2>
      <ul>
        <a href="/">陌上花开</a> <a href="/">校园生活</a> <a href="/">html5</a> <a href="/">SumSung</a> <a href="/">青春</a> <a href="/">温暖</a> <a href="/">阳光</a> <a href="/">三星</a><a href="/">索尼</a> <a href="/">华维荣耀</a> <a href="/">三星</a> <a href="/">索尼</a>
      </ul>
    </div>
    
     <div class="guanzhu" id="follow-us">
      <h2 class="hometitle">关注我们 </h2>
      <ul>
        <li class="qq"><a href="#" target="_blank"><span>QQ号</span>2087961925</a></li>
        <li class="email"><a href="#" target="_blank"><span>邮箱帐号</span>2087961925@qq.com</a></li>
        <li class="wxgzh"><a href="#" target="_blank"><span>微信号</span>一苇以航</a></li>
       
      </ul>
    </div>
  </div>

<footer>
  <p>Design by <a href="#" target="_blank">赵流洋</a></p>
</footer>
<a href="${pageContext.request.contextPath}/life/index.jsp" class="cd-top">Top</a>
</body>
</html>
