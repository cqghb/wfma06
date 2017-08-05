<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>万府武术简介详细页面</title>
</head>
<body class="all">
	<s:include value="../common/navgation.jsp"></s:include>
	<h1>万府简介</h1>
	<img class="wfimg" src="<%=basePath%>${wfInformation.wfimgurl}"/>
	<s:property value="wfInformation.wfexplain"/>
</body>
</html>