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
			
		<%-- <link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script> --%>
		<style type="text/css">
			.modal{
				color:black;
			}
		</style>		
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
		  				style="margin-top:10px;"
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
		<div class="modal-dialog animated slideInDown" role="document">
			<div class="modal-content" style="width:60%;margin:auto;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户登录</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" action="<%=basePath%>user/loginAction" method="post">
						<div class="form-group">
							<label class="col-sm-4 control-label" for="nickname">用户名</label>
							<div class="controls col-sm-8">
								<input type="text" name="user.nickname" id="nickname" placeholder="请输入用户名"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="password">密码</label>
							<div class="controls col-sm-8">
								<input type="password" name="user.password" id="password" placeholder="请输入密码"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-4 control-label" for="sf">身份</label>
							<div class="controls col-sm-8">
								<select class="form-control" id="sf" name="user.type">
									<option value="学员">学员</option>
									<option value="教练">教练</option>
									<option value="管理员">管理员</option>
								</select>
							</div>
							
						</div>
						<div class="form-group">
							<div class="controls col-sm-12">
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>