<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link href="styles/umeditor/themes/default/css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="styles/umeditor/third-party/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="styles/umeditor/umeditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="styles/umeditor/umeditor.min.js"></script>
<script type="text/javascript" src="styles/umeditor/lang/zh-cn/zh-cn.js"></script>

<link href="<c:url value='/styles/theme/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/itxxz.css'/>" rel="stylesheet">

<script src="<c:url value='/styles/theme/bootstrap/js/bootstrap.min.js'/>"></script>

</head>
<body>
<ckeditor:replace  replace="editor1"/>
</body>
</html>