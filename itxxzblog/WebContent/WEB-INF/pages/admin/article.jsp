<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建文章</title>
</head>
<body>
	<form id="save_article" action="admin/saveArticle" method="post">
		<div class="form-group" style="margin-top:10px; margin-left: 10px;float: left;width: 80px;">
			<select name="articleType" class="form-control">
				<option value="0">原创</option>
				<option value="1">转载</option>
				<option value="2">翻译</option>
			</select>
		</div>
		<div class="form-group" style="margin-top:10px; margin-left: 10px;float: left;width: 850px;">
			<input type="text" class="form-control" name="articleName" placeholder="文章标题" required autofocus>
		</div>
 		<div class="form-group" style="margin-top:10px; margin-left: 10px;float: left;">
			<input type="checkbox" name="isFocus" value="1"> 焦点图
			<input type="checkbox" name="isOnTop" value="1"> 置顶
		    <input type="checkbox" name="isRecommend" value="1"> 推荐
		    <input type="checkbox" name="commentid" value="-1"> 关闭评论
  		</div>
 		<div class="form-group" style="margin-top:10px; margin-left: 10px; width: 250px;float: right;">
			<button type="button" class="btn btn-primary" onclick="submitFormData(0)">发表</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-info" onclick="submitFormData(1)">保存</button>&nbsp;&nbsp;
			<button type="button" class="btn btn-default" onclick="submitFormData(2)">取消</button>
		</div>
		<div class="form-group" style="margin-top:10px; margin-left: 10px;width: 450px;">
			<input type="text" id="article_shor_img_path" name="smallImagePath" class="form-control" placeholder="文章缩略图地址"/>
		</div>

		<div class="form-group" style="margin-left: 10px; width: 200px; float: left;">
			<select class="form-control">
				<option>所属分类</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		</div>
		<div class="form-group" style="margin-left: 10px; width: 350px; float: left;">
			<input type="text" name="tagids" class="form-control" placeholder="关键字" required />
		</div>
		<div class="form-group" style="margin-top: 9px;margin-left: 10px; width: 350px; float: left;">
			<span class="label label-warning">多个关键字之间用 "," 分割，如 : IT学习者 , itxxz</span>
		</div>
		<div class="form-group" style="margin:10px">
			<textarea class="form-control" name="summary" rows="3" placeholder="文章摘要"></textarea>
		</div>
		<div class="form-group" style="float:left;width: 100%">
			<textarea id="article_content" name="articleContent">${article }</textarea>
			<script type="text/javascript">
				CKEDITOR.replace( 'article_content' ,{height:390});
			</script>
		</div>
	</form>
</body>
</html>