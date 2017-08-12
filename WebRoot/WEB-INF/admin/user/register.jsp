<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>register page</title>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/animate.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/swiper.animate1.0.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
		<style type="text/css">
			.register{
				margin:0 auto;
				width:50%;
				height:auto;
				border-radius: .8em;
				border:1px solid;
				padding: 1em;
			}
		</style>
	</head>
	<body>
		<div class="register">
			<h2>欢迎新用户</h2>
			<form class="form" action="<%=basePath%>userManage/register.action" method="post">
				<div class="form-group">
					<label for="nickname">昵称</label> 
					<input type="text" 
						name="user.nickname"
						class="form-control" 
						id="nickname"
						placeholder="请输入昵称" />
				</div>
				<div class="form-group">
					<label for="name">姓名</label> 
					<input type="text" 
						name="user.name"
						class="form-control" 
						id="name"
						placeholder="请输入姓名" />
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">密码</label> 
					<input type="password" 
						class="form-control" 
						name="user.password"
						id="exampleInputPassword1"
						placeholder="请输入密码" />
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">再次输入密码</label> 
					<input type="password" 
						class="form-control" 
						name="user."
						id="exampleInputPassword1"
						placeholder="请再次输入密码" />
				</div>
				<div class="form-group">
					<label for="age">年龄</label> 
					<input type="text" 
						name="user.age"
						class="form-control" 
						id="age"
						placeholder="请输入年龄" />
				</div>
				<div class="form-group">
					<label for="sex">性别</label>
					<input type="radio" name="user.sex" value="男"/> 男
					<input type="radio" name="user.sex" value="女"/> 女
				</div>
				<div class="form-group">
					<label for="brithday">生日</label> 
					<input type="date" 
						class="form-control" 
						name="user.brithday"
						id="brithday"
						placeholder="请选择日期" />
				</div>
				<div class="form-group">
					<label for="address">住址</label> 
					<input type="text" 
						class="form-control" 
						name="user.address"
						id="address"
						placeholder="请输入家庭住址" />
				</div>
				<div class="form-group">
					<label for="tell">电话号码</label> 
					<input type="text" 
						class="form-control" 
						name="user.tell"
						id="tell"
						placeholder="请输入电话号码" />
				</div>
				<div class="form-group">
					<label for="qq">QQ</label> 
					<input type="text" 
						class="form-control" 
						name="user.qq"
						id="qq"
						placeholder="请输入qq号码" />
				</div>
				<div class="form-group">
					<label for="email">邮箱</label> 
					<input type="email" 
						class="form-control" 
						name="user.email"
						id="email"
						placeholder="请输入邮箱" />
				</div>
				<div class="form-group">
					<label for="type">类型</label>
					<select class="form-control"
						name="user.type"
						id="type">
						<option>管理员</option>
						<option>学员</option>
						<option>教练</option>
					</select>
				</div>
				<div class="form-group">
					<label for="briefintroduction">个人说明</label> 
					<textarea type="text" 
						rows="3" 
						cols="20"
						name="user.briefintroduction"
						class="form-control" 
						id="briefintroduction"
						placeholder="请输入昵称"></textarea>
				</div>
				<!-- <div class="form-group">
					<label for="exampleInputFile">上传头像</label> 
					<input type="file"
						name="user."
						id="exampleInputFile" />
						<p class="help-block">Example block-level help text here.</p>
				</div> -->
				<button type="reset" class="btn btn-warning">重置</button>
				<button type="submit" class="btn btn-primary">注册</button>
			</form>
		</div>	
	
	</body>
</html>