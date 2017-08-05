<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<title>后台主页面</title>
		<link href="<%=basePath%>easyui/themes/default/easyui.css" rel="stylesheet" type="text/css"/>
		<link href="<%=basePath%>easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
		<link href="<%=basePath%>css/ht.css" rel="stylesheet" type="text/css"/>
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
		<script src="<%=basePath%>easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
		
	</head>
	<body id="adminMain" class="easyui-layout" data-options="fit:true">
	    <div data-options="region:'north',split:true,href:'<%=basePath%>htmain/topjsp'" style="height:100px;"></div>   
	    <%-- <div data-options="region:'south',split:false,href:'<%=basePath%>htmain/buttonjsp'" style="height:100px;"></div> --%>   
	    <div data-options="region:'east',href:'<%=basePath%>htmain/rightjsp',iconCls:'icon-reload',title:'East',split:true" style="width:267px;"></div>   
	    <div data-options="region:'west',href:'<%=basePath%>htmain/leftjsp',title:'模块管理',split:false" style="width:200px;"></div>   
	    <div data-options="region:'center',href:'<%=basePath%>htmain/contentjsp'" style="padding:5px;background:#eee;"></div>  
	</body>
</html>