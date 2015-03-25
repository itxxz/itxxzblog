<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ include file="/include.inc.jsp"%>
<div class="col-md-2">
	<ul id="meulist" class="nav nav-tabs nav-stacked">
		<a href="#" class="list-group-item active"> <i
			class="glyphicon glyphicon-th-large"></i>
			<fmt:message key="ui.admin.manager" />
		</a>
		<c:forEach var="menu" items="${menuList}" varStatus="s">
			<a href="#${menu.id }" class="list-group-item menu_group_head"
				data-toggle="collapse" style="background-color: #C9D3D3"> <i class="${menu.menuIcon}">&nbsp;</i>
				<b>${menu.menuName}</b>
				<i class="pull-right glyphicon glyphicon-plus"></i>
			</a>
			
			<c:if test="${fn:length(menu.childMenuList) gt 0}">
				<ul id="${menu.id }" class="nav nav-list collapse secondmenu">
					<c:forEach var="menuChild" items="${menu.childMenuList}" varStatus="s">
						
						<a href="admin" target="itxxz_admin_content_right" class="list-group-item">
							<i class="glyphicon glyphicon-chevron-right">&nbsp</i>
							${menuChild.menuName }
						</a>
					</c:forEach>
				</ul>
			</c:if>

		</c:forEach>
	</ul>
</div>
<div id="itxxz_admin_content_right_tool" style="margin: 10px 0 10px 10px;">
	<form role="search">
		<div class="form-group" style="width: 150px; float: left;">
			<input type="text" class="form-control" placeholder="标题">
		</div>

		<div class="form-group"
			style="margin-left: 10px; width: 150px; float: left;">
			<select class="form-control">
				<option>分类</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		</div>
		<div class="form-group"
			style="margin-left: 10px; width: 150px; float: left;">
			<select class="form-control">
				<option>时间</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		</div>
		&nbsp;&nbsp;
		<button type="submit" class="btn btn-default">Submit</button>
		<div class="form-group"
			style="margin-right: -60px; width: 150px; float: right;">
			<button type="submit" class="btn btn-primary">发表文章</button>
		</div>
	</form>
</div>
<div id="itxxz_admin_content">
	<a href="#" class="list-group-item">Dapibus ac facilisis in</a> <a
		href="#" class="list-group-item">Morbi leo risus</a> <a href="#"
		class="list-group-item">Porta ac consectetur ac</a> <a href="#"
		class="list-group-item">Vestibulum at eros</a> <a href="#"
		class="list-group-item">Dapibus ac facilisis in</a> <a href="#"
		class="list-group-item">Morbi leo risus</a> <a href="#"
		class="list-group-item">Porta ac consectetur ac</a> <a href="#"
		class="list-group-item">Vestibulum at eros</a> <a href="#"
		class="list-group-item">Porta ac consectetur ac</a> <a href="#"
		class="list-group-item">Vestibulum at eros</a>
</div>
<shiro:hasPermission name="menu:list"> 
listlistlistlistlistlistlist
</shiro:hasPermission>
<shiro:hasPermission name="menu:create"> 
menu:createmenu:createmenu:createmenu:createmenu:create 
</shiro:hasPermission>
<shiro:hasPermission name="menu:delete"> 
deletedeletedeletedeletedelete 
</shiro:hasPermission>
