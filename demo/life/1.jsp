<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>学无止境_个人博客 </title>
<meta name="keywords" content="个人博客" />
<meta name="description" content="fight" />
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
      <li><a href="${pageContext.request.contextPath}/ExperienceServlet">学无止境</a>
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


<article>
  <h1 class="t_nav"><span>您现在的位置是：首页 > 慢生活 > </span><a href="/" class="n1">网站首页</a><a href="/" class="n2">慢生活</a></h1>
  <div class="infosbox">
    <div class="newsview">
      <h3 class="news_title">个人博客，属于我的小世界！</h3>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/">杨青</a></li>
          <li class="lmname"><a href="/">学无止境</a></li>
          <li class="timer">2018-5-13</li>
          <li class="view">4567已阅读</li>
          <li class="like">8888888</li>
        </ul>
      </div>
      <div class="tags"><a href="/" target="_blank">个人博客</a> &nbsp; <a href="/" target="_blank">小世界</a></div>
      <div class="news_about"><strong>简介</strong>生活一天天过，消磨着意志</div>
      <div class="news_con"> 
      	无论你是否珍惜，人生旅途只有单程票……<br>

		别太计较人生的甘苦,那都是生活对人的教诲<br>
		
		会爱的人,才是有灵魂的人<br>
		
		幸福就像书页的两面,一面是喜,一面是忧;一面是苦,一面是甜……<br>
		
		那一个迷失的我带着一路的疼痛在黑白的剪影里活着…………<br>
		
		德行与爱合一的灵魂该是多么幸福！<br>
		
		为了要活得幸福,我们应当相信幸福的可能<br>
		
		无论是在白天或黑夜，世界都有两个不同的面目，为着两种不同的人存在<br>
		
		把宇宙缩减到唯一的一个人，把唯一的一个人扩张到宇宙，这才是爱<br>
		
		人生的简单，记忆中最恬静的莫过于……
        <br>
        &nbsp; </div>
    </div>
    <div class="share">
      <p class="diggit"><a href="JavaScript:makeRequest('/e/public/digg/?classid=3&amp;id=19&amp;dotop=1&amp;doajax=1&amp;ajaxarea=diggnum','EchoReturnedText','GET','');"> 很赞哦！ </a>(<b id="diggnum"><script type="text/javascript" src="/e/public/ViewClick/?classid=2&id=20&down=5"></script>13</b>)</p>
      <p class="dasbox"><a href="javascript:void(0)" onClick="dashangToggle()" class="dashang" title="打赏，支持一下">打赏本站</a></p>
      <div class="hide_box"></div>
      <div class="shang_box"> <a class="shang_close" href="javascript:void(0)" onclick="dashangToggle()" title="关闭">关闭</a>
        <div class="shang_tit">
          <p>感谢您的支持，我会继续努力的!</p>
        </div>
        <div class="shang_payimg"> <img src="images/alipayimg.jpg" alt="扫码支持" title="扫一扫"> </div>
        <div class="pay_explain">扫码打赏，你说多少就多少</div>
        <div class="shang_payselect">
          <div class="pay_item checked" data-id="alipay"> <span class="radiobox"></span> <span class="pay_logo"><img src="images/alipay.jpg" alt="支付宝"></span> </div>
          <div class="pay_item" data-id="weipay"> <span class="radiobox"></span> <span class="pay_logo"><img src="images/wechat.jpg" alt="微信"></span> </div>
        </div>
        <script type="text/javascript">
    $(function(){
    	$(".pay_item").click(function(){
    		$(this).addClass('checked').siblings('.pay_item').removeClass('checked');
    		var dataid=$(this).attr('data-id');
    		$(".shang_payimg img").attr("src","images/"+dataid+"img.jpg");
    		$("#shang_pay_txt").text(dataid=="alipay"?"支付宝":"微信");
    	});
    });
    function dashangToggle(){
    	$(".hide_box").fadeToggle();
    	$(".shang_box").fadeToggle();
    }
    </script> 
      </div>
    </div>
    <div class="nextinfo">
      <p>上一篇：<a href="/news/life/2018-03-13/804.html">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></p>
      <p>下一篇：<a href="/news/life/">返回列表</a></p>
    </div>
    <div class="otherlink">
      <h2>相关文章</h2>
      <ul>
        <li><a href="#" title="html5个人博客模板《黑色格调》">且随疾风前行，身后必须留心</a></li>
        <li><a href="/download/div/2018-04-18/814.html" title="html5个人博客模板主题《清雅》">精准，就是屠宰和手术的区别</a></li>
        <li><a href="/download/div/2018-03-18/807.html" title="html5个人博客模板主题《绅士》">长路漫漫，唯剑作伴！</a></li>
      </ul>
    </div>
    <div class="news_pl">
      <h2>文章评论</h2>
      <ul>
        <div class="gbko"> </div>
      </ul>
    </div>
  </div>
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
        <a href="#">陌上花开</a> <a href="#">校园生活</a> <a href="#">html5</a>  <a href="#">青春</a> <a href="#">温暖</a> <a href="#">阳光</a> <a href="/">三星</a><a href="/">索尼</a> <a href="/">华维荣耀</a> <a href="/">三星</a> <a href="/">索尼</a>
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
