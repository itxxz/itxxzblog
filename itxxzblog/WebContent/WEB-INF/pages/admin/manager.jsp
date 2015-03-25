<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><fmt:message key="ui.title" /></title></title>
<style>
html,body{
	height:100%;
	margin:0;
	padding:0
}
</style>
</head>
<body>
	<iframe id="mainFrame" name="mainFrame" src="<c:url value='/mainFrame'/>" style="overflow:visible;"
			scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
</body>
</html>