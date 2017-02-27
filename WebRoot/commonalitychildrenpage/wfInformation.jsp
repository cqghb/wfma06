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
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="武术,万府武术,蒲兰杨">
	<meta http-equiv="description" content="This is my page">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
</head>
<body>
	<div class="swiper-container">
		<c:forEach items="${wfInformationList }" var="wfinforli" varStatus="status">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img alt="" src="<%=basePath%>${wfinforli.wfimgurl}"/>
				</div>
				<div class="swiper-slide">
					${wfinforli.wfexplain }
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</c:forEach>
	</div>
	<s:debug></s:debug>
</body>
<script type="text/javascript">
	var swiper = new Swiper('.swiper-container', {
	    pagination: '.swiper-pagination',
	    effect: 'cube',
	    grabCursor: true,
	    cube: {
	        shadow: true,
	        slideShadows: true,
	        shadowOffset: 20,
	        shadowScale: 0.94
	    }
	});
</script>
</html>