<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<link href="<c:url value='/styles/bootstrap/css/bootstrap.min.css'/>"  rel="stylesheet" >
	<link href="<c:url value='/styles/bootstrap/css/bootstrap-admin-theme.css'/>"  rel="stylesheet" >

<title><fmt:message key="ui.title" /></title>
</head>
<body>
     <nav class="navbar navbar-default navbar-inverse navbar-fixed-top " role="navigation">
	 <div class="container">
       <div class="row">
		  <!-- Brand and toggle get grouped for better mobile display -->
		  <div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			  <span class="sr-only">Toggle navigation</span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			  <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Boot3Admin</a>
		  </div>
		  <!-- Collect the nav links, forms, and other content for toggling -->
		  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			  <li class="active"><a href="#">首页</a></li>
			  <li ><a href="#">关于我们</a></li>			  
			  <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li><a href="#">Action</a></li>
				  <li><a href="#">Another action</a></li>
				  <li><a href="#">Something else here</a></li>
				  <li class="divider"></li>
				  <li><a href="#">Separated link</a></li>
				  <li class="divider"></li>
				  <li><a href="#">One more separated link</a></li>
				</ul>
			  </li>
			</ul>
			<form class="navbar-form navbar-left" role="search">
			  <div class="form-group">
				<input type="text" class="form-control" placeholder="请输入内容">
			  </div>
			  <button type="submit" class="btn btn-default">搜索</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="#">链接</a></li>
			  <li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员<b class="caret"></b></a>
				<ul class="dropdown-menu">
				  <li><a href="#">设置</a></li>
				  <li><a href="#">个人资料</a></li>
				  <li><a href="#">账户中心</a></li>
				  <li class="divider"></li>
				  <li><a href="#">退出登录</a></li>
				</ul>
			  </li>
			</ul>
		  </div><!-- /.navbar-collapse -->
		  </div>
		  </div>
		</nav>
		
<div class="container">
            <!-- left, vertical navbar & content -->
            <div class="row">
                <!-- left, vertical navbar -->
                <div class="col-md-2 bootstrap-admin-col-left">
                     <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                         <li class="active">
                            <a href="index.html"><i class="glyphicon glyphicon-chevron-right"></i> 首页</a>
                        </li>
						<li >
                            <a href="about.html"><i class="glyphicon glyphicon-chevron-right"></i> 关于我们</a>
                        </li>                       
                        <li class="disabled">
                            <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 日历</a><!-- calendar.html -->
                        </li>
                        <li class="disabled">
                            <a href="#"><i class="glyphicon glyphicon-chevron-right"></i> 统计图表</a><!-- stats.html -->
                        </li>
                        <li>
                            <a href="forms.html"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                        </li>
                        <li>
                            <a href="tables.html"><i class="glyphicon glyphicon-chevron-right"></i> 数据表格</a>
                        </li>
                        <li>
                            <a href="buttons-and-icons.html"><i class="glyphicon glyphicon-chevron-right"></i> 按钮 &amp; 图标</a>
                        </li>
                        <li>
                            <a href="wysiwyg-editors.html"><i class="glyphicon glyphicon-chevron-right"></i> HTML编辑器</a>
                        </li>
                        <li>
                            <a href="ui-and-interface.html"><i class="glyphicon glyphicon-chevron-right"></i> UI界面</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">731</span> 订单</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">812</span> 清单</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">27</span> 客户</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">1,234</span> 用户</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">2,221</span> 消息</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">11</span> 报告</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">83</span> 错误</a>
                        </li>
                        <li>
                            <a href="#"><span class="badge pull-right">4,231</span> 日志</a>
                        </li>
                    </ul>
                </div>

                <!-- content -->
                <div class="col-md-10">
                    <div class="row">
                        <div class="alert alert-success bootstrap-admin-alert">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <h4>成功</h4>
                            这里是操作成功提示信息！
                        </div>
                    </div>

                    <div class="row">
                        <div class="navbar navbar-default bootstrap-admin-navbar-thin">
                            <ol class="breadcrumb bootstrap-admin-breadcrumb">
                                <li>
                                    <a href="#">首页</a>
                                </li>
                                <li>
                                    <a href="#">设置</a>
                                </li>
                                <li class="active">工具</li>
                            </ol>
                        </div>
                    </div>

                    <div class="row">
                        <div class="panel panel-default bootstrap-admin-no-table-panel">
                            <div class="panel-heading">
                                <div class="text-muted bootstrap-admin-box-title">统计</div>
                                <div class="pull-right"><span class="badge">查看更多</span></div>
                            </div>
                            <div class="bootstrap-admin-panel-content bootstrap-admin-no-table-panel-content collapse in">
                                <div class="col-md-3">
                                    <div class="easyPieChart" data-percent="73" style="width: 110px; height: 110px; line-height: 110px;">73%<canvas width="110" height="110"></canvas></div>
                                    <div class="chart-bottom-heading"><span class="label label-info">访问量</span></div>
                                </div>
                                <div class="col-md-3">
                                    <div class="easyPieChart" data-percent="53" style="width: 110px; height: 110px; line-height: 110px;">53%<canvas width="110" height="110"></canvas></div>
                                    <div class="chart-bottom-heading"><span class="label label-info">页面浏览量</span></div>
                                </div>
                                <div class="col-md-3">
                                    <div class="easyPieChart" data-percent="83" style="width: 110px; height: 110px; line-height: 110px;">83%<canvas width="110" height="110"></canvas></div>
                                    <div class="chart-bottom-heading"><span class="label label-info">用户</span></div>
                                </div>
                                <div class="col-md-3">
                                    <div class="easyPieChart" data-percent="13" style="width: 110px; height: 110px; line-height: 110px;">13%<canvas width="110" height="110"></canvas></div>
                                    <div class="chart-bottom-heading"><span class="label label-info">订单</span></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row bootstrap-admin-no-edges-padding">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">用户</div>
                                    <div class="pull-right"><span class="badge">1,234</span></div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Vincent</td>
                                                <td>Gabriel</td>
                                                <td>@gabrielva</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">订单</div>
                                    <div class="pull-right"><span class="badge">752</span></div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Product</th>
                                                <th>Date</th>
                                                <th>Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Coat</td>
                                                <td>02/02/2013</td>
                                                <td>$25.12</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Jacket</td>
                                                <td>01/02/2013</td>
                                                <td>$335.00</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Shoes</td>
                                                <td>01/02/2013</td>
                                                <td>$29.99</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row bootstrap-admin-no-edges-padding">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">客户</div>
                                    <div class="pull-right"><span class="badge">17</span></div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>First Name</th>
                                                <th>Last Name</th>
                                                <th>Username</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>Mark</td>
                                                <td>Otto</td>
                                                <td>@mdo</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>Jacob</td>
                                                <td>Thornton</td>
                                                <td>@fat</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>Vincent</td>
                                                <td>Gabriel</td>
                                                <td>@gabrielva</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">清单</div>
                                    <div class="pull-right"><span class="badge">812</span></div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Date</th>
                                                <th>Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>02/02/2013</td>
                                                <td>$25.12</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>01/02/2013</td>
                                                <td>$335.00</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>01/02/2013</td>
                                                <td>$29.99</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <hr>
                <footer role="contentinfo">
                    <p>&copy; 2013 <a href="#" target="_blank">Boot3Admin</a></p>
                </footer>
            </div>
        </div>
		
	<script src="<c:url value='/styles/jquery/jquery-1.9.1.min.js'/>"></script>
	<script src="<c:url value='/styles/bootstrap/js/bootstrap.min.js'/>"></script>
</body>
</html>