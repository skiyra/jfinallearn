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
<title>文章编辑页面Demo</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script src="<%=basePath%>assets/ueditor/ueditor.config.js"></script>
<script src="<%=basePath%>assets/ueditor/ueditor.all.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="margin-top: 30px;">
		<h1  style="text-align: center;">文章编辑页面Demo</h1>
		<form class="form-horizontal" onsubmit="return confirm('确认保存？')" method="post" action="article/submit">
			<input type="hidden" name="article.id" value="${article.id }">
			<div class="form-group">
				<label class="control-label col-lg-2 col-sm-2" for="title">文章标题</label>
				<div class="col-lg-7 col-sm-7">
					<input id="title" type="text" name="article.title" value="${article.title }" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-sm-2" for="title">文章内容</label>
				<div class="col-lg-9 col-sm-9">
					<textarea id="content" name="article.content">${article.content }</textarea>
				</div>
			</div>
			<div class="form-group" style="text-align: center;">
				<button type="submit" class="btn btn-primary">提交表单</button>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
	$(function(){
		//初始化编辑器
		var contentEditor=new UE.ui.Editor({
			initialFrameWidth:"auto",
		    initialFrameHeight:350
		});
		//将编辑器渲染到textarea上
		contentEditor.render("content");
	});
	</script>
</body>
</html>