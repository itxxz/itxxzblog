<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div id="itxxz_admin_content_right_tool"
		style="margin: 10px 0 10px 10px;">
		<form role="search">
			<div class="form-group" style="width: 250px; float: left;">
				<input type="text" class="form-control" placeholder="文章标题">
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
			<button type="submit" class="btn btn-default">筛选</button>
			<div class="form-group"
				style="margin-right:30px; float: right;">
				<button type="button" class="btn btn-primary" onclick="loadContent('admin/createNewArticle','','发表文章')">
				 发表文章
				</button>
			</div>

		</form>
	</div>
	<div id="itxxz_admin_content">
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="success">
					<th style="text-align: center;">标题</th>
					<th style="text-align: center;">分类</th>
					<th style="text-align: center;">作者</th>
					<th style="text-align: center;">时间</th>
					<th style="text-align: center;">状态</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
				<tr>
					<td>1-1</td>
					<td>1-2</td>
					<td>1-3</td>
					<td>1-4</td>
					<td>1-4</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div style="margin-top: -30px; float: right;">
		<nav>
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">首页</span>
			</a></li>
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">上一页</span>
			</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">下一页</span>
			</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">尾页</span>
			</a></li>
		</ul>
		</nav>
	</div>
<!-- Button trigger modal -->
</body>
</html>