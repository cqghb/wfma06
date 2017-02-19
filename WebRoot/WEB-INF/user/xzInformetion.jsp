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
	<title>校长详细信息页面</title>
</head>
<body>
	<s:include value="../common/navgation.jsp"></s:include>
	<h1>校长详细信息</h1>
	<img alt="校长头像" src="<%=basePath%><s:property value="user.head"/>" height="200px" width="100px"/>
	<s:property value="user.nickname"/>
	<s:property value="user.name"/>
	<s:property value="user.sex"/>
	<s:property value="user.age"/>
	<s:property value="user.brithday"/>
	<s:property value="user.address"/>
	<s:property value="user.tell"/>
	<s:property value="user.qq"/>
	<s:property value="user.email"/>
	<s:property value="user.briefintroduction"/>
</body>
</html>