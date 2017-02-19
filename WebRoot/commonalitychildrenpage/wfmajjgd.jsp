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
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>title</title>
</head>
<body class="all">
	<%-- <h1 style="font-size: 20px;color:red;">万府武术简介详情</h1>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<img class="wfimg" src="<%=basePath%>${wfInformation.wfimgurl}"/>
	 ${wfInformation.wfexplain.} 
	 <font style="size: 20px;color:red;"><s:property value="wfInformation.wfexplain"/></font>
	
	<s:debug></s:debug> --%>
</body>
</html>