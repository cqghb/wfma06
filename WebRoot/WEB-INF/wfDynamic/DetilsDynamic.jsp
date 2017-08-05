<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>新闻详细信息页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=BAfStGXfXpo0uT7e77SFkD95W2POcAij"></script>
		
		<style type="text/css">
		</style>
	</head>
	<body class="all">
		<s:include value="../common/navgation.jsp"></s:include>
		<div class="DynamicDetilsBody">
			<div class="xwbt">
				<center>
					<h2>${dynamic.dyname }</h2>
				</center>
			</div>
			<div class="fbsj">
				<span style="float:right;">
					发布时间:<fmt:formatDate value="${dynamic.dytime }" type="both"/>
				</span>
			</div>
			<div class="nrpt">
				<div class="xwnr">
					${dynamic.dydetails }
				</div>
				<div class="xwpt">
					<img alt="新闻配图" src="<%=basePath%>${dynamic.dyimgurl }" width="100%" height="auto" style="margin-top: 1px;"/>
				</div>
			</div>
		</div>
	</body>
</html>