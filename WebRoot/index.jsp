<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>index page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>easyui/themes/default/easyui.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/animate.css">
	<link href="<%=basePath%>easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
	
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
	<script src="<%=basePath%>easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
	<style type="text/css">
		
	</style>
  </head>
  
  <body>
  	<div class="easyui-window" title="用户登录" 
  		data-options="collapsible:false,minimizable:false,maximizable:false,closable:false,draggable:false,resizable:false" 
  		style="width:500px;height:200px;padding:10px;">
		<form id="userlogin" action="<%=basePath%>user/loginAction" method="post">
	    	<div>
	    		<labelb for="zh">账号</label>
	    		<input id="zh" class="easyui-textbox" value="王胜的昵称" 
	    		data-options="prompt:'请输入用户名',iconCls:'icon-man',iconAlign:'left'" type="text" name="user.nickname" />
	    	</div>
	    	<div>
	    		<label for="mm">密码</label>
	    		<input id="mm" class="easyui-textbox" value="222222" 
	    		data-options="prompt:'请输入密码',iconCls:'icon-lock',iconAlign:'left'" type="password" name="user.password" />
	    	</div>
	    	<div id="box">
	    		<label for="sf">身份</label>
	    		<select id="sf" name="user.type" style="width:200px;">
	    			<option value="管理员" selected="selected">管理员</option>
	    			<option value="教练">教练</option>
	    			<option value="学员">学员</option>
	    		</select>
	    	</div>
	    	<div>
	    		<a id="btn" class="easyui-linkbutton" href="#">忘记密码</a>
	    		<a id="btn" class="easyui-linkbutton" href="<%=basePath%>userManage/registerView.action">注册</a>
	    	</div>
	    	<div>
	    		<a id="btn_submit" class="easyui-linkbutton" href="#">登录</a>
	    		<a id="btn_reset" class="easyui-linkbutton" href="#">重置</a>
	    	</div>
	    </form>
	</div>
    
  </body>
  <script type="text/javascript">
	$(function(){
		//下拉列表
		$('#sf').combobox({	
			panelAlign: 'left',
		});
		//登录
		$('#btn_submit').linkbutton().bind('click',function(){
			$('#userlogin').submit();//表单提交
		});
		//重置表单
		$('#btn_reset').linkbutton().bind('click',function(){
			$('#userlogin').form('reset');//表单重置
		});
	});
  </script>
</html>
