<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="icon" href="<c:url value='/styles/theme/bootstrap/images/favicon.ico'/>" type="image/x-icon" />
<link href="<c:url value='/styles/theme/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/itxxz.css'/>" rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/itxxz.css'/>" rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/summernote.css'/>" rel="stylesheet">
<link href="<c:url value='/styles/theme/bootstrap/css/font-awesome.min.css'/>" rel="stylesheet">

<script src="<c:url value='/styles/jquery/jquery-1.9.1.min.js'/>"></script>
<script src="<c:url value='/styles/theme/bootstrap/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/styles/theme/bootstrap/js/summernote.js'/>"></script>
<script src="<c:url value='/styles/theme/bootstrap/js/easydialog.min.js'/>"></script>
  <script type="text/javascript">
    $(function() {
      $('.summernote').summernote({
        height: 200
      });

/*       $('form').on('submit', function (e) {
        e.preventDefault();
        //alert($('.summernote').code());
        $("#articleContent").val($('.summernote').code());
      }); */
    });
    
    function createContent(){
    	$("#articleContent").val($('.summernote').code());
    }
  </script>

<title><fmt:message key="ui.title" /></title>
</head>
<body>
<%@ include file="navbar.jsp"%>
	<div class="panel panel-default bread_crumb_navigation">
	  <div class="panel-heading">
	   <fmt:message key="itxxz.location" />：<a href="<c:url value='/'/>"><fmt:message key="ui.project" /></a> > ${category.navName}
	</div>

<div class="itxxz_category_list">

    <div class="list-group itxxz_category_list">
      <a href="#" class="list-group-item">
        <h4 class="list-group-item-heading">List group item heading</h4>
        <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
      </a>
      <a href="#" class="list-group-item">
        <h4 class="list-group-item-heading">List group item heading</h4>
        <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
      </a>
      <a href="#" class="list-group-item">
        <h4 class="list-group-item-heading">List group item heading</h4>
        <p class="list-group-item-text">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
      </a>
    </div>
</div>
<div>
<form action="createNewArticle" method="post" onsubmit="createContent()">
	<input name="articleName" />
	<input id="articleContent" name="articleContent" />
  <textarea class="summernote"><p>Seasons <b>coming up</b></p></textarea>
  <button type="submit" class="btn btn-default">submit</button>
</form>
</div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>