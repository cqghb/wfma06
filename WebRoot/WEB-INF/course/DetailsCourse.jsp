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
		<title>课程详细信息页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
		
		<style type="text/css">
		</style>
	</head>
	<body class="all">
		<s:include value="../common/navgation.jsp"></s:include>
		<div class="CourseDetilsBody">
			<div class="CourseTop">
				<div class="CourseTopBody">
					<div class="CourseLeftUp">
						<center><img alt="课程图片" src="<%=basePath%>${course.courseimg}" width="100%" height="100%"/></center>
					</div>
					<div class="CourseLeftDown">
						${course.coursename }
					</div>
				</div>
				<div class="CourseRight">
					${course.courseexplain }
				</div>
			</div>
			<div class="CourseDown">
				<div class="CourseDownLeft">
					${course.coursedirectory }
				</div>
				<div class="CourseDownright">
					<video class="videoList" src="<%=basePath%>${course.videourl }" controls="controls">
						您的浏览器不支持 video 标签
					</video>
				</div>
			</div>
			
		</div>
	</body>
</html>