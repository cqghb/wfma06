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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
	</head>
	<body>
		<s:include value="../common/navgation.jsp"></s:include>
		<table style="background-color: black;">
			<tr>
				<th>课程图片</th>
				<th>课程名称</th>
				<th>课程说明</th>
			</tr>
			<c:forEach items="${allCurse }" var="allCurse">
				<tr>
					<td>
						<img alt="课程图片" src="<%=basePath%>${allCurse.courseimg}" width="30px" height="30px">
					</td>
					<td>${allCurse.coursename }</td>
					<td>${allCurse.courseexplain }</td>
				</tr>
			</c:forEach>
			<%-- 
			<s:iterator value="allCurse" status="allCurse">
				<tr>
					<td>
						<img alt="课程图片" src="<%=basePath%><s:property value="allCurse.courseimg"/>" width="30px" height="30px">
					</td>
					<td>
						<s:property value="allCurse.coursename"/>
					</td>
					<td>
						<s:property value="allCurse.courseexplain"/>
					</td>
				</tr>
			</s:iterator> --%>
			</table>
		<s:include value="../common/page.jsp"></s:include>
		<s:debug></s:debug>
	</body>
</html>