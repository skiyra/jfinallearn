<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文章列表管理Demo</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="margin-top: 30px;">
		<h1 style="text-align: center;">文章列表管理Demo
		<a class="btn btn-primary btn-md pull-right" href="article/edit">添加新文章</a>
		</h1>
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>标题</th>
					<th>创建时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${articles }" var="article">
					<tr>
					<td>${article.id }</td>
					<td><a target="_blank" href="article/detail/${article.id}">${article.title }</a></td>
					<td>${article.createTime }</td>
					<td>
					<a href="article/edit/${article.id }">编辑</a>
					<a onclick="return confirm('确认删除？')" href="article/del/${article.id }">删除</a>
					</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>