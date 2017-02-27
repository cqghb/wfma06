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
		<title>新闻分页页面</title>
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
		<h3>新闻列表</h3>
		<c:forEach items="${dynamicList }" var="dy" varStatus="status">
			<!-- 标题 内容 日期 -->
			<span>
				<a href="#">${dy.dyname }</a>
			</span>
			<span>
				<fmt:formatDate value="${dy.dytime }" pattern="yy-MM-dd"/>
			</span>
			<div>
				<c:choose>
					<c:when test="${fn:length(dy.dydetails)>'100'}">
						<c:set var="dydetails" value="${dy.dydetails }"/>
						<c:set var="dydetails" value="${fn:substring(dydetails, 0, 100)}" />
						${dydetails }
						<a href="#">查看全文</a>
					</c:when>
					<c:otherwise>
						${dy.dydetails }
					</c:otherwise>
				</c:choose>
			</div>
		</c:forEach>
		<s:include value="../common/page.jsp"></s:include>
	</body>
</html>