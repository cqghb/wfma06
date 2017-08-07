<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>课程分页页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/animate.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
		<style type="text/css">
			.courseList{
				position: fixed;
				flex-direction:row;
				flex-wrap:wrap;
			}
		</style>
	</head>
	<body class="all">
		<s:include value="../common/navgation.jsp"></s:include>
		<br/><br/><br/><br/><br/>
		<div class="courseList">
			<c:forEach items="${allCurse }" var="allCurse">
				<div class="column animated zoomIn">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img src="<%=basePath%>${allCurse.courseimg}" alt="">
							<div class="caption">
								<h3>${allCurse.coursename }</h3>
								<p>${allCurse.courseexplain }</p>
								<p>
									<!-- <a href="#" class="btn btn-primary" role="button">查看详情</a> -->
									<a class="btn btn-primary" role="button" href="<%=basePath%>course/DetailsCourseBYId.action?course.courseid=${allCurse.courseid}">
										查看详情
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>	<br/><br/><br/><br/><br/><br/>
		<s:include value="../common/page.jsp"></s:include>
		<s:debug></s:debug>
	</body>
</html>