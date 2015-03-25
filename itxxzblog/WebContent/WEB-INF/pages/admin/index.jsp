<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="<c:url value='/styles/theme/bootstrap/css/bootstrap.min.css'/>"
	rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/itxxz.css'/>"
	rel="stylesheet">

<link href="<c:url value='/styles/theme/bootstrap/css/easydialog.css'/>"
	rel="stylesheet">
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="col-md-2">
		<ul id="meulist" class="nav nav-tabs nav-stacked">
			<a href="#" class="list-group-item active"> <i
				class="glyphicon glyphicon-th-large"></i> <fmt:message
					key="ui.admin.manager" />
			</a>
			<c:forEach var="menu" items="${menuList}" varStatus="s">
				<a href="#${menu.id }" class="list-group-item menu_group_head"
					data-toggle="collapse" style="background-color: #C9D3D3"> <i
					class="${menu.menuIcon}">&nbsp;</i> <b>${menu.menuName}</b> <i
					class="pull-right glyphicon glyphicon-minus"></i>
				</a>

				<c:if test="${fn:length(menu.childMenuList) gt 0}">
					<ul id="${menu.id }" class="nav nav-list collapse in secondmenu">
						<c:forEach var="menuChild" items="${menu.childMenuList}"
							varStatus="s">
							<a
								href="Javascript: loadContent('${menuChild.menuUrl}','${menu.menuName} > ${menuChild.menuName }')"
								class="list-group-item"> <i
								class="glyphicon glyphicon-chevron-right">&nbsp</i>
								${menuChild.menuName }
							</a>
						</c:forEach>
					</ul>
				</c:if>
			</c:forEach>
		</ul>
	</div>
	<div class="panel panel-default itxxz_month_ranking"
		style="width: 1000px; height: 560px;">
		<div class="panel-heading">
			<h3 id="itxxz_admin_content_title" class="panel-title">IT学习者博客管理后台</h3>
		</div>
		<div id="itxxz_admin_content_right" class="container" style="width: 100%;">

			<div class="blog-header">
				<h3 class="blog-title">概要</h3>
				<blockquote>
					<p class="lead blog-description">
						IT学习者博客(itxxzblog)是一免费开源的j2ee建站平台,以Spring Framework为核心容器，Spring MVC为模型视图控制器，
						MyBatis为数据访问层， Apache Shiro为权限授权层，Bootstrap为前端页面展示框架。
						<br><br>
						IT学习者博客(itxxzblog)代码结构简洁明了，层级清楚，通过二次开发，相关人员可快速搭建相关功能框架。内置了用户管理、文章分类、文章管理、友情链接等博客必须的功能模块，后续会继续完善。
						<br><br>
						IT学习者博客(itxxzblog)主要定位于迫切学习主流框架、了解掌握内容组件功能、快速熟悉架构设计理念的java相关从业人员。
						<br><br>
						IT学习者博客(itxxzblog)由<a href="http://www.itxxz.com" target="_blank">IT学习者</a>开发，使用说明开发技巧可到<a href="http://www.itxxz.com/bbs" target="_blank">IT学习者论坛</a>进行交流讨论<br>
					</p>
				</blockquote>
			</div>
	      <div class="blog-header">
	        <h3 class="blog-title">版权声明</h3>
	        <blockquote>
	        <p class="lead blog-description">
				1、本软件使用<a href="http://www.apache.org/licenses/LICENSE-2.0" target="_blank">Apache License 2.0 协议</a><br>
				2、如果你修改了代码，需要在被修改的文件中说明。<br>
				3、在延伸的代码中（修改和有源代码衍生的代码中）需要带有原来代码中的协议，商标，专利声明和其他原来作者规定需要包含的说明。<br>
				4、如果再发布的产品中包含一个Notice文件，则在Notice文件中需要带有Apache Licence。你可以在Notice中增加自己的许可，但不可以表现为对Apache Licence构成更改。<br>
				5、Apache Licence也是对商业应用友好的许可。使用者也可以在需要的时候修改代码来满足需要并作为开源或商业产品发布/销售
	        </p>
	        </blockquote>
	      </div>
			<nav>
			</nav>

		</div>
		<!-- /.container -->

	</div>

	<script src="<c:url value='/styles/jquery/jquery-1.9.1.min.js'/>"></script>
	<script
		src="<c:url value='/styles/theme/bootstrap/js/bootstrap.min.js'/>"></script>
	<script
		src="<c:url value='/styles/theme/bootstrap/js/easydialog.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/styles/ckeditor/ckeditor.js'/>"></script>
	<script type="text/javascript">
		$(function() {
			initMain();
			showDT();
		});
		function initMain() {
			$(".menu_group_head").click(function() {
				if ($(this).next().hasClass("in")) {
					$(this).find(".pull-right").removeClass('glyphicon-minus');
					$(this).find(".pull-right").addClass('glyphicon-plus');
				} else {
					$(this).find(".pull-right").removeClass('glyphicon-plus');
					$(this).find(".pull-right").addClass('glyphicon-minus');
				}
			});
		}
		var lastMenuName = "";
		function loadContent(menuUrl, menuName, appendName) {
			if (appendName == null) {
				lastMenuName = "所在目录：" + menuName;
			} else {
				appendName = lastMenuName + " > " + appendName;
			}
			$("#itxxz_admin_content_title").html(lastMenuName);
			$("#itxxz_admin_content_right").load(menuUrl);
		}
		function showDT() {
			var days = new Array("日", "一", "二", "三", "四", "五", "六");
			var currentDT = new Date();
			var y, m, date, day;
			y = currentDT.getFullYear(); //四位整数表示的年份  
			m = currentDT.getMonth() + 1; //月  
			date = currentDT.getDate(); //日  
			day = currentDT.getDay(); //星期  
			theDateStr = y + "年" + m + "月" + date + "日 星期" + days[day];
			document.getElementById("show_current_time").innerHTML = theDateStr;
		}
		function saveArticleForm() {
			var msg = "";
			$.ajax({
				cache : true,
				type : "POST",
				url : $('#save_article').attr("action"),
				data : $('#save_article').serialize(),
				error : function(request) {
					showInfoTips("服务器连接错误")
				},
				success : function(data) {
					if (data == "success") {
						showInfoTips("发表成功");
						loadContent("admin/articleList", "文章管理")
					}
				}
			})
		}
		function submitFormData(type) {
			var content = CKEDITOR.instances.article_content.getData();
			$("#article_content").val(content);
			// 匹配图片（g表示匹配所有结果i表示区分大小写）
			var imgReg = /<img.*?(?:>|\/>)/i;
			// 匹配src属性
			var img = content.match(imgReg);
			if (img != null && img != "") {
				var srcReg = /src=['"]?([^'"]*)['"]?/i;
				var src = img[0].match(srcReg);
				$("#article_shor_img_path").val(src[1]);
			}
			$("#publishOrDraft").val(type);
			saveArticleForm();
		}
		function showInfoTips(msg) {
			easyDialog.open({
				container : {
					header : '提示',
					content : msg
				},
				autoClose : 2000
			});
		}
	</script>
</body>
</html>