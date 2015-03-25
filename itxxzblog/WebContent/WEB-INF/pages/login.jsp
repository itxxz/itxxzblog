<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>

<style>
<!--
.loginForm { display:block; overflow:auto; padding:10px 5px; position:relative; margin: 0 auto; width:600px;}
.loginForm div.unit {display:block; margin:0; padding:5px 0; position:relative;clear:both;}
.loginForm p { float:left; display:block; width:380px; height:21px; margin:0; padding:5px 0; position:relative;}
.loginForm label { float:left; width:120px; padding:0 5px; line-height:21px;}
-->
</style>

<div class="loginForm">
	<h2>登录</h2>
	<form method="post" action="<c:url value='/login'/>">
		<p>
			<label>用户名：</label>
			<input type="text" name="username" class="required" size="20"/>
		</p>
		<p>
			<label>密　码：</label>
			<input type="password" name="password" size="20" />
		</p>
		<p><label>&nbsp;</label><input type="submit" value="登入"/></p>
	</form>
	
</div>