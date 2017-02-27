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
		<title>分页页面</title>
	</head>
	<body>
		当前第<s:property value="#session.page.pageIndex"/>页 ,
		共有<s:property value="#session.page.pageTotal"/>页,
		每页显示<s:property value="#session.page.pageSize"/>条,
		<s:if test="#session.page.pageIndex > 1">
			<a href="<%=basePath%><s:property value="actionName"/>?page.pageIndex=1&actionName=<s:property value="actionName"/>">首页</a>
		</s:if>
		<s:else>
			首页
		</s:else>
		<s:if test="#session.page.pageIndex > 1">
			<a href="<%=basePath%><s:property value="actionName"/>?page.pageIndex=<s:property value="#session.page.pageIndex - 1"/>&actionName=<s:property value="actionName"/>">上一页</a>
		</s:if>
		<s:else>
			上一页
		</s:else>
		<s:if test="#session.page.pageIndex < #session.page.pageTotal">
			<a href="<%=basePath%><s:property value="actionName"/>?page.pageIndex=<s:property value="#session.page.pageIndex + 1"/>&actionName=<s:property value="actionName"/>">下一页</a>
		</s:if>
		<s:else>
			下一页
		</s:else>
		<s:if test="#session.page.pageIndex < #session.page.pageTotal">
			<a href="<%=basePath%><s:property value="actionName"/>?page.pageIndex=<s:property value="#session.page.pageTotal"/>&actionName=<s:property value="actionName"/>">尾页</a>
		</s:if>
		<s:else>
			尾页
		</s:else>
	</body>
</html>