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
    java.lang.Class 类是Java中的反射中心。<br>

Class类的一个对象表示运行时程序中的一个类。<br>

Class 类是一个通用类。<br>

它需要一个类型参数，它是由 Class 对象表示的类的类型。<br>

例如， Class<Boolean> 表示布尔类的类对象。<br>

Class<?> 表示其类未知的类类型。
<br>
我们可以使用 Class 类在运行时查找类的信息。
<br>
我们可以通过以下方式获取类的Class对象的引用:
<br>
使用类文字<br>
使用Object类的getClass()方法<br>
使用Class类的forName()方法<br>

类文字<br>
类文字是类名称后跟一个点和单词“类"。<br>

例如，如果你有一个类 Test ，它的类文字是 Test.class ，你可以写<br>

Class<Test> testClass = Test.class;<br>
您还可以获取原始数据类型的类对象关键字 void 使用类文字boolean.class，byte.class，char.class，short.class，int.class，long.class，float.class，double.class和void.class。<br>

每个包装器原始数据类型类具有名为 TYPE 的静态字段，它具有对它表示的基本数据类型的类对象的引用。<br>

int.class 和 Integer.TYPE 指的是同一个类对象。<br><br>

public class Main {<br>
  public static void main(String[] args) {<br>
    Class c = boolean.class;<br>
    c = Boolean.TYPE;<br>
    c = byte.class;<br>
    c = Byte.TYPE;<br>
    c = char.class;<br>
    c = Character.TYPE;<br>
    c = short.class;<br>
    c = Short.TYPE ;<br>
    c = int.class;<br>
    c = Integer.TYPE;<br>
    c = long.class;<br>
    c = Long.TYPE;<br>
    c = float.class;<br>
    c = Float.TYPE; <br>
    c = double.class;<br>
    c = Double.TYPE; <br>
    c = void.class;<br>
    c = Void.TYPE;<br>
  }<br>
}<br>
getClass()方法<br>
Object类有一个 getClass()方法，它返回对的引用类对象的类对象。<br>

以下代码显示如何获取对Test类的Class对象的引用：<br>

class Test{<br>
  
}<br>
public class Main {<br>
  public static void main(String[] args) {<br>
    Test   testRef = new Test();<br>
    Class testClass = testRef.getClass();<br>

  }<br>
}<br>
forName()方法<br>
Class类 forName() static方法返回对Class对象的引用。<br>

它的重载方法是<br>

Class<?>   forName(String  className)<br>
Class<?>   forName(String name,  boolean initialize, ClassLoader loader)<br>
forName()方法的第一个版本接受完全该类的限定名作为参数，并加载该类，并返回其对象引用<br>

如果类已经加载，它将返回对Class对象的引用。<br>

第二版本方法可以控制是否初始化或不初始化该类在加载时。 我们也可以传入类加载器。<br>

要加载名为com.w3cschool..Test的类:<br>

Class testClass  = Class.forName("com.w3cschool..Test");<br>
下面的代码显示了如何加载一个类并获取对它的Class对象的引用。<br>

class MyClass {<br>
  static {
    System.out.println("Loading class MyClass...");<br>
  }
}<br>
<br>
public class Main {<br>
  public static void main(String[] args) {<br>
    try {
      String className = "MyClass";<br>
      boolean initialize = false;<br>

      ClassLoader cLoader = Main.class.getClassLoader();<br>
      Class c = Class.forName(className, initialize, cLoader);<br>
      className = "MyClass";<br>
      System.out.println("about to load");<br>
      // Will load and initialize the class<br>
      c = Class.forName(className);<br>
    } catch (ClassNotFoundException e) {<br>
      System.out.println(e.getMessage());<br>
    }<br>
  }<br>
}<br>
上面的代码生成以下结果。<br>


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
