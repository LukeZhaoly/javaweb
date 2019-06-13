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
      <li><a href="${pageContext.request.contextPath}/getAll.do">网站首页</a> </li>
      <li><a href="${pageContext.request.contextPath}/about.jsp">关于我</a> </li>
      <li><a href="${pageContext.request.contextPath}/getAll.do?flagstr=study">学无止境</a>
        <ul class="sub-nav">
         	<li><a href="${pageContext.request.contextPath}/getAll.do?flagstr=study">心得笔记</a></li>
            <li><a href="${pageContext.request.contextPath}/get.ud">推荐工具</a></li>
        </ul>
      </li>
      <li><a href="${pageContext.request.contextPath}/getAll.do?flagstr=life">慢生活</a></li>
      <li><a href="${pageContext.request.contextPath}/listTime.do">时间轴</a> </li>
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
  <h1 class="t_nav"><a href="/" class="n1">网站首页</a><a href="/" class="n2">慢生活</a></h1>
  <div class="infosbox">
    <div class="newsview">
      <h3 class="news_title">个人博客，属于我的小世界！</h3>
      <div class="bloginfo">
        <ul>
          <li class="author"><a href="/"></a></li>
          <li class="lmname"><a href="/">学无止境</a></li>
          <li class="timer">${date }</li>
          <li class="view">4567已阅读</li>
          <li class="like">8888888</li>
        </ul>
      </div>
      <div class="tags"><a href="/" target="_blank">个人博客</a> &nbsp; <a href="/" target="_blank">小世界</a></div>
     <!-- 文章内容 -->
    Java 流(Stream)、文件(File)和IO<br>
Java.io 包几乎包含了所有操作输入、输出需要的类。所有这些流类代表了输入源和输出目标。<br>

Java.io 包中的流支持很多种格式，比如：基本类型、对象、本地化字符集等等。<br>

一个流可以理解为一个数据的序列。输入流表示从一个源读取数据，输出流表示向一个目标写数据。<br>

Java 为 I/O 提供了强大的而灵活的支持，使其更广泛地应用到文件传输和网络编程中。<br>

但本节讲述最基本的和流与 I/O 相关的功能。我们将通过一个个例子来学习这些功能。<br>

读取控制台输入<br>
Java 的控制台输入由 System.in 完成。<br>

为了获得一个绑定到控制台的字符流，你可以把 System.in 包装在一个 BufferedReader 对象中来创建一个字符流。<br>

下面是创建 BufferedReader 的基本语法：<br>

BufferedReader br = new BufferedReader(new <br>
                      InputStreamReader(System.in));<br>
BufferedReader 对象创建后，我们便可以使用 read() 方法从控制台读取一个字符，或者用 readLine() 方法读取一个字符串。<br>

从控制台读取多字符输入<br>
从 BufferedReader 对象读取一个字符要使用 read() 方法，它的语法如下：<br>

int read( ) throws IOException<br>
每次调用 read() 方法，它从输入流读取一个字符并把该字符作为整数值返回。 当流结束的时候返回 -1。该方法抛出 IOException。<br>
下面的程序示范了用 read() 方法从控制台不断读取字符直到用户输入 "q"。<br>

BRRead.java 文件代码：<br>
//使用 BufferedReader 在控制台读取字符<br>
 
import java.io.*;<br>
 
public class BRRead {<br>
    public static void main(String args[]) throws IOException {<br>
        char c;
        // 使用 System.in 创建 BufferedReader<br>
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));<br>
        System.out.println("输入字符, 按下 'q' 键退出。");<br>
        // 读取字符
        do {<br>
            c = (char) br.read();<br>
            System.out.println(c);<br>
        } while (c != 'q');<br>
    }<br>
}<br>
以上实例编译运行结果如下:<br>

输入字符, 按下 'q' 键退出。<br>
runoob<br>
r<br>
u<br>
n<br>
o<br>
o<br>
b<br>
  <br>
   <br>
q <br>
q<br>

     <br>
     <center>
     	<img alt="" src="${pageContext.request.contextPath }/images/templet/08-34-26-0.gif">
     </center>
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
          <div class="pay_item checked" data-id="alipay"> <span class="radiobox"></span> <span class="pay_logo"><img src="${pageContext.request.contextPath }/images/templet/alipay.jpg" alt="支付宝"></span> </div>
          <div class="pay_item" data-id="weipay"> <span class="radiobox"></span> <span class="pay_logo"><img src="${pageContext.request.contextPath }/images/templet/weichat.jpg" alt="微信"></span> </div>
        </div>
        <script type="text/javascript">
    $(function(){
    	$(".pay_item").click(function(){
    		$(this).addClass('checked').siblings('.pay_item').removeClass('checked');
    		var dataid=$(this).attr('data-id');
    		$(".shang_payimg img").attr("src","${pageContext.request.contextPath }/images/templet/"+dataid+"img.jpg");
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
      <p><a href="/">返回列表</a></p>
    </div>
    
    <div class="news_pl">
      <h2>文章评论</h2>
      <ul>
        <div class="gbko"> </div>
      </ul>
    </div>
  </div>
  <div class="sidebar">  
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
    <div class="links">
      <h2 class="hometitle">友情链接</h2>
      <ul>
        <li><a href="http://www.gulixueyuan.com/" target="_blank">学习资源网站</a></li>
        <li><a href="https://pan.baidu.com/s/1mpvwVNjSbtJp4csvyvmkKA" target="_blank">SSH框架资源分享 提取码：wvuh </a></li>
      
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
</article>
<footer>
  <p>Design by <a href="#" target="_blank">赵流洋</a></p>
</footer>
<a href="${pageContext.request.contextPath}/index.jsp" class="cd-top">Top</a>
</body>
</html>
