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
<title>${article.title }</title>
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="assets/css/common.css"/>
	</head>
	<body>
	<div class="cyz_header">
			<div class="container">
				<div class="cyz_header_top">
					<a class="cyz_logo"></a>
					<span class="cyz_slogan">少有人走的路，你我同行</span>
					<div class="cyz_header_right">
						<div class="cyz_searchBox">
							<input type="text" placeholder="Search"/>
							<button type="button">搜索</button>
						</div>
						<div class="cyz_user">
							<a href="">注册</a>
							<span class="cyz_vline">|</span>
							<a href="">登录</a>
						</div>
					</div>
				</div>
				<div class="cyz_header_nav">
					<ul class="cyz_nav">
						<li><a href="">首页</a></li>
						<li><a href="">创业项目</a></li>
						<li><a href="">创业人物</a></li>
						<li><a href="">投资机构</a></li>
						<li><a href="">投资人</a></li>
						<li class="active"><a href="">项目报道</a></li>
						<li><a href="">文章分类</a></li>
						<li><a href="">文章分类</a></li>
					</ul>
					
				</div>
			</div>
		</div>
		<div class="cyz_main_container">
			<div class="container">
				<div class="row cyz_main_row">
					<div class="col-lg-9 col-md-9 cyz_main_left">
						<div class="panel panel-default">
							<div class="panel-body">
								 <!-- 文章详情内容区域-->	
								 <div class="cyz_article_detail">
								 	<h1>${article.title }</h1>
								 	<p class="cyz_article_info">
								 		<span>发布于 ${article.createTime }</span>
								 		<span>来源：小木学堂</span>
								 		<span>50 浏览量</span>
								 	</p>
								 	<div class="cyz_article_content">
								 		<div class="jf-article-content">
								 			${article.content }
										</div>
								 	</div>
								 </div>
							</div>
						</div>
						<div class="panel panel-default cyz_custom_panel">
							<div class="panel-heading"><span>评论区</span></div>
							<div class="panel-body">

							</div>
							</div>
					</div>
					<div class="col-lg-3 col-md-3 cyz_main_right">
						<div class="panel panel-default cyz_custom_panel">
							<div class="panel-heading">
								<span>项目报道-热文</span>
							</div>
							<div class="panel-body" >
								<div class="cyz_slide_hot_articles">
									<ul class="cyz_slide_img_text">
										<li>
											<img src="http://www.whcyz.com/upload/images/20141122/article/1416647250955.640[1]" />
											<a href="http://www.xiaomuedu.com">关于首届威海市创业大赛电子商务</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141024/article/1414157267880.jpg.thumb.jpg" />
											<a href="http://www.xiaomuedu.com">于镇滔：动漫业“第一个敢于吃螃</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141122/article/1416647250955.640[1]" />
											<a href="http://www.xiaomuedu.com">关于首届威海市创业大赛电子商务</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141024/article/1414157267880.jpg.thumb.jpg" />
											<a href="http://www.xiaomuedu.com">于镇滔：动漫业“第一个敢于吃螃</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141122/article/1416647250955.640[1]" />
											<a href="http://www.xiaomuedu.com">关于首届威海市创业大赛电子商务</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141024/article/1414157267880.jpg.thumb.jpg" />
											<a href="http://www.xiaomuedu.com">于镇滔：动漫业“第一个敢于吃螃</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141122/article/1416647250955.640[1]" />
											<a href="http://www.xiaomuedu.com">关于首届威海市创业大赛电子商务</a>
										</li>
										<li>
											<img src="http://www.whcyz.com/upload/images/20141024/article/1414157267880.jpg.thumb.jpg" />
											<a href="http://www.xiaomuedu.com">于镇滔：动漫业“第一个敢于吃螃</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div class="cyz_footer">
			<div class="cyz_footer_link">
				<div class="container">
					<h4>友情链接</h4>
					<div class="hline"><div></div></div>
					<p class="cyz_links">
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
						<a href="http://www.xiaomuedu.com" target="_blank">小木学堂</a>
					</p>
				</div>
			</div>
			<div class="cyz_footer_copyright">Copyright © 小木创业者 鲁ICP备*******号</div>
		</div>
	</body>
	</html>
