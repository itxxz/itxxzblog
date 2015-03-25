<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="<c:url value='/styles/theme/bootstrap/images/favicon.ico'/>" type="image/x-icon" />
<link href="<c:url value='/styles/theme/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/itxxz.css'/>" rel="stylesheet">

<script src="<c:url value='/styles/jquery/jquery-1.9.1.min.js'/>"></script>
<script src="<c:url value='/styles/theme/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/styles/theme/bootstrap/js/easydialog.min.js'/>"></script>

<title><fmt:message key="ui.title" /></title>
</head>
<body>
<%@ include file="navbar.jsp"%>

	<div class="itxxz_blog_container">
	    <!-- 焦点图 -->
	    <div id="myCarousel" class="carousel slide" data-ride="carousel">
	      <!-- Indicators -->
	      <div class="border-indicators">
		      <ol class="carousel-indicators">
		        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		        <li data-target="#myCarousel" data-slide-to="1"></li>
		        <li data-target="#myCarousel" data-slide-to="2"></li>
		      </ol>
		   </div>
	      <div class="carousel-inner" role="listbox">
	        <div class="item active">
	          <img src="uploads/images/blog1.jpg" alt="First slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>Example headline.</h1>
	              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
	              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
	            </div>
	          </div>
	        </div>
	        <div class="item">
	          <img src="uploads/images/blog2.jpg" alt="Second slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>Another example headline.</h1>
	              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
	              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
	            </div>
	          </div>
	        </div>
	        <div class="item">
	          <img src="uploads/images/blog3.jpg" alt="Third slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>One more for good measure.</h1>
	              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
	              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
	            </div>
	          </div>
	        </div>
	      </div>
	      
	    </div>
	    <!-- 头条推荐 -->
	    <div class="panel panel-default itxxz_hot_blogs">
	       <div class="panel-heading">
	         <h3 class="panel-title"><fmt:message key="itxxz.hot.blogs" /></h3>
	       </div>
	       <div class="panel-body">
	            <div class="itxxz_blog_title">
	            <a href="http://www.itxxz.com/a/kuangjia/2015/0318/697.html">
	            shiro权限控制
	            </a>
	            </div>
	            <div class="itxx_bolg_content"><p>shiro的配置文件有两种写法，一个是通过项目加载shiro.ini的方式，另一个便是通过spring进行bean加载的方式，这里螃蟹主要介绍后者。</div>
	       <hr>
	            <div class="itxxz_blog_title">
	            <a href="http://www.itxxz.com/a/javashili/tuozhan/2015/0302/java_maze.html">
	            java迷宫_A*算法实现</a></div>
	            <div class="itxx_bolg_content"><p>这里用到了java的Timer类，指定行走时间单位，然后通过不断的地图重绘来实现便可以了，这是java swing中最常见的做法。</div>
	       </div>
	     </div>
	     <!-- 本月排行 -->
	    <div class="panel panel-default itxxz_month_ranking">
	       <div class="panel-heading">
	         <h3 class="panel-title"><fmt:message key="itxxz.month.ranking" /></h3>
	       </div>
	           <a href="http://www.itxxz.com/a/kuangjia/2015/0318/697.html" class="list-group-item">骑士旅游（Knight tour）_java实现</a>
	            <a href="http://www.itxxz.com/a/javashili/2015/0305/667.html" class="list-group-item">生命游戏_java源码</a>
	            <a href="http://www.itxxz.com/a/javashili/tuozhan/2015/0304/665.html" class="list-group-item">A*算法原理图文详解</a>
	            <a href="http://www.itxxz.com/a/javashili/tuozhan/2015/0225/java_Fibonacci.html" class="list-group-item">斐波那契数列(java_算法)</a>
	            <a href="http://www.itxxz.com/a/javashili/tuozhan/2015/0225/java_Hanoi.html" class="list-group-item">河内塔(java实现)</a>
	            <a href="http://www.itxxz.com/a/gaoji/2015/0117/extjs_controller.html" class="list-group-item">Extjs5.0动态加载controller</a>
	            <a href="http://www.itxxz.com/a/gaoji/2015/0104/506.html" class="list-group-item">Extjs5.0集成Eclipse</a>
	            <a href="http://www.itxxz.com/ActiveMQ/2015/0225/647.html" class="list-group-item">activemq 5.11.1 win8(x64)环境配置</a>
	            <a href="http://www.itxxz.com/kindeditor/2014/1119/KindEditor-custom-plugin.html" class="list-group-item">KindEditor 4.1.10 添加自定义插件</a>
	            <a href="http://www.itxxz.com/a/meiriyiyu/2015/0311/math_gifs.html" class="list-group-item">21副GIF动图让你了解各种数学概念</a>
	     </div>
	     
	     <div class="itxxz_hot_images">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/apache.jpg" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/hibernate.jpg" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/mybatis.jpg" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/mysql.png" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/jsp.jpg" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/oracle.jpg" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/spring.jpg" data-holder-rendered="true">
	      	<img class="img-thumbnail" alt="200x150" src="uploads/images/struts2.jpg" data-holder-rendered="true">
	      </div>
	      <div class="panel panel-default itxxz_last_news">
	        <div class="panel-heading">
	          <h3 class="panel-title">最新公告</h3>
	        </div>
	        <div class="panel-body">
	          IT学习者博客(itxxzblog)主要定位于迫切学习主流框架、了解掌握内容组件功能、快速熟悉架构设计理念的java相关从业人员。<br>
	          	详情可访问<a href="http://www.itxxz.com" target="_blank">IT学习者</a>官网进行交流，使用说明开发技巧可到<a href="http://www.itxxz.com/bbs" target="_blank">IT学习者论坛</a>进行讨论<br>
	        </div>
	      </div>
	      <div class="itxxz_blog_column">
      	     <!-- 本月排行 -->
		    <div class="panel panel-default itxxz_part_column">
		       <div class="panel-heading">
		         <h3 class="panel-title">BOOTSTRAP3</h3>
		       </div>
		            <a href="#" class="list-group-item">博客布局</a>
		            <a href="#" class="list-group-item">form表单</a>
		            <a href="#" class="list-group-item">table列表</a>
		            <a href="#" class="list-group-item">分页组件</a>
		            <a href="#" class="list-group-item">导航菜单</a>
		            <a href="#" class="list-group-item">焦点图</a>
		            <a href="#" class="list-group-item">字体样式</a>
		     </div>
		      <!-- 本月排行 -->
		    <div class="panel panel-default itxxz_part_column">
		       <div class="panel-heading">
		         <h3 class="panel-title">技术指南</h3>
		       </div>
		       <c:forEach var="article" begin="0" end="6" items="${articleList }" varStatus="s">
		       		<a href="#" class="list-group-item">${article.articleName }</a>
		       </c:forEach>
		     </div>
		      <!-- 本月排行 -->
		    <div class="panel panel-default itxxz_month_ranking">
		       <div class="panel-heading">
		         <h3 class="panel-title">推荐文章</h3>
		       </div>
		            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
		            <a href="#" class="list-group-item">Morbi leo risus</a>
		            <a href="#" class="list-group-item">Porta ac consectetur ac</a>
		            <a href="#" class="list-group-item">Vestibulum at eros</a>
		            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
		            <a href="#" class="list-group-item">Morbi leo risus</a>
		            <a href="#" class="list-group-item">Porta ac consectetur ac</a>
		     </div>
     	</div>
		<div class="panel panel-default itxxz_flink">
			<div class="panel-heading">
				<h3 class="panel-title"><fmt:message key="itxxz.flink" /></h3>
			</div>
			<div class="panel-body">
		        <div class="itxxz_flink_content">
					<a href="http://www.itxxz.com">IT学习者</a>&nbsp;&nbsp;
					<a href="http://www.itxxz.com/bbs">IT论坛</a>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>