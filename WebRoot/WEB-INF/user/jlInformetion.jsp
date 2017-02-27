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
		<title>教练分页页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
	</head>
	<body>
		<s:include value="../common/navgation.jsp"></s:include>
		<br/><br/><br/><br/><br/><br/><br/><br/>
		<table style="background-color: black;">
			<tr>
				<th>头像</th>
				<th>姓名</th>
				<th>地址</th>
				<th>年龄</th>
			</tr>
			<c:forEach items="${jl }" var="jl">
				<tr>
					<td>
						<img alt="头像" src="<%=basePath%>${jl.head}" width="30px" height="30px">
					</td>
					<td>${jl.name }</td>
					<td>${jl.address }</td>
					<td>${jl.age }</td>
				</tr>
			</c:forEach>
		</table>
		
		<s:include value="../common/page.jsp"></s:include>
	</body>
</html>