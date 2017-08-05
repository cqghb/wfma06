<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>"/> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>north page</title>
		<link href="<%=basePath%>easyui/themes/default/easyui.css" rel="stylesheet" type="text/css"/>
		<link href="<%=basePath%>easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
		<script src="<%=basePath%>easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
		<style type="text/css">
			
		</style>
	</head>
	<body>
		<h1>万府武术后台管理系统</h1>
		<div class="userws">
			欢迎您<s:property value="#session.user.nickname"/>
		</div>
		
		<s:debug></s:debug>
	</body>
</html>