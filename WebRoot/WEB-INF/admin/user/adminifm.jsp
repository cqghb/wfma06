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
		<base href="<%=basePath%>"/> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href="<%=basePath%>easyui/themes/default/easyui.css" rel="stylesheet" type="text/css"/>
		<link href="<%=basePath%>easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
		<script src="<%=basePath%>easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(function (){
				<%-- url: '<%=basePath%>htadmin/adminifm', --%>
				/* 初始化表格**start */
				$('#userView').datagrid({
					loadMsg: '数据加载中.....',
					fitColumns: true,
					singleSelect: true,
					striped: true,
					rownumbers: true,
					toolbar: '#toolbarUser'
					//selected: true
				});
				/* 初始化表格**end */
				/* --初始化工具栏区 --start--  */
				$('#edit_user').linkbutton({
					iconCls: 'icon-edit'
				});
				/* --初始化工具栏区 --end--  */
				/* --初始化修给用户信息的窗口--start */
				/* --初始化面板--start */
				$('#update_user').dialog({
					width: 600,
					height: 400,
					closed: true,
					title: '修改用户信息'
				});
				/* --初始化面板--end */
				/* --初始化表单--start */
				$('#update_user_form').form({});
				/* --初始化表单--end */
				/* --初始化提交按钮--start */
				$('#submit_user_update').linkbutton({});
				/* --初始化提交按钮--end */
				/* --初始化修给用户信息的窗口--end */
				/* --修改按钮触发时--start */
				$('#edit_user').linkbutton().bind('click',function (){
					//获取选中的数据
					var row = $('#userView').datagrid('getSelected');
					console.log(row);
					//填充修改表单 数据
					$('#update_user_form').form('load',{
						'user.id': row.id,
						'user.nickname': row.nickname,
						'user.password': row.password,
						'password2': row.password,
						'user.name': row.name,
						'user.sex': row.sex,
						'user.age': row.age,
						'user.brithday': row.brithday,
						'user.address': row.address,
						'user.tell': row.tell,
						'user.qq': row.qq,
						'user.email': row.email,
						'user.type': row.type,
						'user.briefintroduction': row.briefintroduction,
						'user.head': row.head
					});
					//显示隐藏的面板
					$('#update_user').dialog({
						closed: false
					});
				});
				/* --修改按钮触发时--end */
				/* --提交按钮触发时--start */
				$('#submit_user_update').linkbutton().bind('click',function (){
					//提交表单数据
					$('#update_user_form').form('submit',{
						<%-- url: '<%=basePath%>htadmin/editUser', --%>
						onSubmit: function (){
							//console.log('提交之前发生的');
						},
						success: function (data){
							//隐藏面板
							$('#update_user').dialog({
								closed: false
							});
							//清空表单数据
							$('#update_user_form').form('clear');
							//刷新页面
							location.replace('<%=basePath%>htadmin/adminifm');
						}
					});
					
				});
				/* --提交按钮触发时--end */
			});
			
		</script>
	</head>
	<body>
		<!-- 用户数据显示区--start -->
		<table id="userView">
			<thead>
				<tr>
					<th data-options="field:'id',width:30">编号</th>
					<th data-options="field:'nickname',width:30">昵称</th>
					<th data-options="field:'password',width:30">密码</th>
					<th data-options="field:'name',width:30">姓名</th>
					<th data-options="field:'sex',width:30">性别</th>
					<th data-options="field:'age',width:30">年龄</th>
					<th data-options="field:'brithday',width:30">出生日期</th>
					<th data-options="field:'address',width:30">居住地址</th>
					<th data-options="field:'tell',width:30">电话号码</th>
					<th data-options="field:'qq',width:30">QQ号码</th>
					<th data-options="field:'email',width:30">电子邮件</th>
					<th data-options="field:'type',width:30">用户类型</th>
					<th data-options="field:'briefintroduction',width:30">个人简介</th>
					<th data-options="field:'head',width:30">头像</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${userHT.id }</td>
					<td>${userHT.nickname }</td>
					<td>${userHT.password }</td>
					<td>${userHT.name }</td>
					<td>${userHT.sex }</td>
					<td>${userHT.age }</td>
					<td>${userHT.brithday }</td>
					<td>${userHT.address }</td>
					<td>${userHT.tell }</td>
					<td>${userHT.qq }</td>
					<td>${userHT.email }</td>
					<td>${userHT.type }</td>
					<td>${userHT.briefintroduction }</td>
					<td>${userHT.head }</td>
				</tr>
			</tbody>
		</table>
		<!-- 用户数据显示区--end -->
		<!-- 用户工具栏区 -- start -->
		<div id="toolbarUser">
			<a id="edit_user" style="margin:5px;">修改</a>
		</div>
		<!-- 用户工具栏区 -- end -->
		<!-- 信息修改区--start -->
		<div id="update_user">
			<form id="update_user_form" action="<%=basePath%>htadmin/editUser" method="post">
				<div>
					<label for="user.id">编号</label>
					<input data-options="required:true,readonly:true" type="text" name="user.id" class="easyui-textbox"/>
				</div>
				<div>
					<label for="user.nickname">昵称</label>
					<input data-options="required:true,prompt:'请输入昵称'" type="text" name="user.nickname" class="easyui-textbox"/>
				</div>
				<div>
					<label for="user.password">密码</label>
					<input data-options="required:true,prompt:'请输入密码',showEye:true" type="password" name="user.password" class="easyui-passwordbox"/>
				</div>
				<!-- 客户端用来校验 -->
				<div>
					<label for="password2">请再输一次密码</label>
					<input data-options="required:true,prompt:'请输入密码',showEye:true" type="password" name="password2" class="easyui-passwordbox"/>
				</div>
				<div>
					<label for="user.name">姓名</label>
					<input data-options="required:true,prompt:'请输入姓名'" type="text" name="user.name" class="easyui-textbox"/>
				</div>
				<div>
					<label for="user.sex">性别</label>
					<select class="easyui-combobox" name="user.sex" >
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div>
					<label for="user.age">年龄</label>
					<input data-options="required:true,prompt:'请输入年龄'" type="text" name="user.age" class="easyui-numberbox"/>
				</div>
				<div>
					<label for="user.brithday">出生日期</label>
					<input data-options="required:true,prompt:'请选择出生日期',min:3,max:200" type="text" name="user.brithday" class="easyui-textbox"/>
				</div>
				<div>
					<label for="user.address">地址</label>
					<input data-options="required:true,prompt:'请输入居住地址'" type="text" name="user.address" class="easyui-textbox"/>
				</div>
				<div>
					<label for="user.tell">电话号码</label>
					<input data-options="required:true,prompt:'请输入电话号码',validType:'minLength[11]'" type="text" name="user.tell" class="easyui-validatebox"/>
				</div>
				<div>
					<label for="user.qq">QQ号码</label>
					<input data-options="required:true,prompt:'请输入QQ号码',validType:'minLength[15]'" type="text" name="user.qq" class="easyui-validatebox"/>
				</div>
				<div>
					<label for="user.email">电子邮箱</label>
					<input data-options="required:true,prompt:'请输入邮箱',validType:'email'" type="text" name="user.email" class="easyui-validatebox"/>
				</div>
				<div>
					<label for="user.type">身份类型</label>
					<select class="easyui-combobox" name="user.type" >
						<option value="管理员">管理员</option>
						<option value="学员">学员</option>
						<option value="教练">教练</option>
					</select>
				</div>
				<div>
					<label for="user.briefintroduction">个人简介</label>
					<textarea name="user.briefintroduction" class="easyui-validatebox" data-options="required:true,prompt:'请输入个人简介'"></textarea>
					
				</div>
				<div>
					<label for="user.head">头像</label>
					<input data-options="required:true,prompt:'请输入头像地址'" type="text" name="user.head" class="easyui-textbox"/>
				</div>
				<div>
					<a id="submit_user_update">提交</a>
				</div>
			</form>
		</div>
		<!-- 信息修改区--end -->
	</body>
</html>