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
		<title>走进万府页面</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
	</head>
	<body class="all">
		<s:include value="../common/navgation.jsp"></s:include>
		<div class="panel panel-primary ppp-wfjj">
			<div class="panel-heading">
				<span class="panel-title">万府简介</span>
				<a href="<%=basePath%>wfinformation/wfmajjgd.action" class="gd">更多</a>
			</div>
			<div class="panel-body">
				<c:if test="${wfInformation.wfimgurl !='' }">
					<div class="wfinimg">
						<img class="wfimg" src="<%=basePath%>${wfInformation.wfimgurl}"/>
					</div>
				</c:if>
				<div class="wfexplain">
					<c:choose>
						<c:when test="${fn:length(wfInformation.wfexplain)>'180'}">
							<c:set var="wfexplain" value="${wfInformation.wfexplain }"/>
							<c:set var="wfexplain" value="${fn:substring(wfexplain, 0, 180)}" />
							${wfexplain }
							<div>
								<a href="#" style="color:#000000;">查看全文 >></a>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<font style="color:#000000;">${wfInformation.wfexplain }</font>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		<div class="panel panel-primary ppp-wfjj">
			<div class="panel-heading">
				<span class="panel-title">校长简介</span>
				<a href="<%=basePath%>user/xzDetails.action" class="gd">更多</a>
			</div>
			<div class="panel-body">
				<img alt="校长头像" src="<%=basePath%><s:property value="user.head"/>" height="200px" width="100px"/>
				<s:property value="user.nickname"/>
				<s:property value="user.briefintroduction"/>
			</div>
		</div>
		<div class="panel panel-primary ppp-wfjj">
			<div class="panel-heading">
				<span class="panel-title">教练</span>
				<a href="<%=basePath%>user/jlDetails.action?actionName=user/jlDetails.action" class="gd">更多</a>
			</div>
			<div class="panel-body">
				<table style="background-color: black;">
					<tr>
						<td>头像</td>
						<td>姓名</td>
						<td>地址</td>
						<td>年龄</td>
					</tr>
				<c:forEach items="${jl }" var="jl">
					<tr>
						<td>
							<img alt="教练头像" src="<%=basePath%>${jl.head}" width="30px" height="30px">
						</td>
						<td>${jl.name }</td>
						<td>${jl.address }</td>
						<td>${jl.age }</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
		<s:include value="../common/buttom.jsp"></s:include>
	</body>
</html>