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
<title>Insert title here</title>
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=BAfStGXfXpo0uT7e77SFkD95W2POcAij"></script>
		
</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<ul class="nav nav-tabs" role="tablist">
				<s:iterator value="#session.NAVList" var="navi">
					<%-- <s:if test="#navi.index==0"> --%>
						<li role="presentation">
		  					<%-- <a class="nav navdh" href="<s:property value="#navi.naurl"/>&naid=<s:property value="#navi.naid"/>">
		  						<s:property value="#navi.naname"/>
		  					</a> --%>
		  					<a class="nav navdh" href="<s:property value="#navi.naurl"/>">
		  						<s:property value="#navi.naname"/>
		  					</a>
		  				</li>
					<%-- </s:if> --%>
					<%-- <s:if test="#navi.index>0">
						<li role="presentation" class="active">
		  					<a class="nav navdh" href="<s:property value="#navi.naurl"/>?naid=<s:property value="#navi.naid"/>">
		  						<s:property value="#navi.naname"/>
		  					</a>
		  				</li>
					</s:if> --%>
					<%-- <c:if test="#navi.index==0">
		  				<li role="presentation" class="active">
		  					<a class="nav navdh" href="<s:property value="#navi.naurl"/>?naid=<s:property value="#navi.naid"/>">
		  						<s:property value="#navi.naname"/>
		  					</a>
		  				</li>
		  			</c:if>
		  			<c:if test="#navi.index>0">
		  				<li role="presentation">
			  				<a class="nav navdh" href="<s:property value="#navi.naurl"/>?naid=<s:property value="#navi.naid"/>">
		  						<s:property value="#navi.naname"/>
		  					</a>
			  			</li>
		  			</c:if> --%>
				</s:iterator>
	  			<!-- <li role="presentation">
	  				<div class="row">
	  				  <form class="navbar-form navbar-left" role="search">
					  <div class="col-md-8">
					  	<input type="text" class="form-control" placeholder="Search">
					  </div>
					  <div class="col-md-2">
					  	<button type="submit" class="btn btn-default">Submit</button>
					  </div>
					  </form>
					</div>
	  			</li> -->
	  			<li role="presentation">
	  				<button type="button" 
		  				class="btn btn-primary btn-lg" 
		  				data-toggle="modal" 
		  				data-target="#myModal">登录</button>
	  			</li>
			</ul>
		</div>
	</nav>

	<div class="modal fade" 
		id="myModal" 
		tabindex="-1" 
		role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户登录</h4>
				</div>
				<div class="modal-body">
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary">登录</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>