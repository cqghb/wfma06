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
		
	</head>
	<body>
		<!-- 数据显示区 -- start -->
		<table id="stuAll">
			<thead>
				<tr>
					<th data-options="field:'id',width:30">编号</th>
					<th data-options="field:'nickname',width:30">昵称</th>
					<th data-options="field:'password',width:30">密码</th>
					<th data-options="field:'name',width:30">姓名</th>
					<th data-options="field:'sex',width:30">性别</th>
					<th data-options="field:'age',width:30">年龄</th>
					<th data-options="field:'brithday',width:40">出生日期</th>
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
				<c:forEach items="${students }" var="stu">
					<tr>
						<td>${stu.id }</td>
						<td>${stu.nickname }</td>
						<td>${stu.password }</td>
						<td>${stu.name }</td>
						<td>${stu.sex }</td>
						<td>${stu.age }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${stu.brithday }" /></td>
						<td>${stu.address }</td>
						<td>${stu.tell }</td>
						<td>${stu.qq }</td>
						<td>${stu.email }</td>
						<td>${stu.type }</td>
						<td>${stu.briefintroduction }</td>
						<td>${stu.head }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- 数据显示区 -- end -->
		<!-- 工具栏区 -- start -->
		<div id="toolbar">
			<a id="add_stu" style="margin:5px;">添加</a>
			<a id="edit_stu" style="margin:5px;">修改</a>
			<a id="remove_stu" style="margin:5px;">删除</a>
			<!-- 查询部分--start -->
			<form id="search_stu" method="post">
				<label for="nc_stu">昵称</label>
				<input id="nc_stu" style="width: 100px;" type="text" name="user.nickname" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<label for="name_stu">姓名</label>
				<input id="name_stu" style="width: 100px;" type="text" name="user.name" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<label for="sex_stu">性别</label>
				<select id="sex_stu" class="easyui-combobox" name="user.sex" style="50px;">
					<option>=选择=</option>
					<option value="男">男</option>
					<option value="女">女</option>
				</select>
				<label for="type_stu">用户类型</label>
				<select id="type_stu" class="easyui-combobox" name="user.type" style="50px;">
					<option>=选择=</option>
					<option value="学员">学员</option>
					<option value="教练">教练</option>
					<option value="管理员">管理员</option>
				</select>
				<label for="age_stus">年龄从</label>
				<input id="age_stus" style="width: 100px;" type="text" name="ages" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<label for="ag_estue">始,从</label>
				<input id="age_stue" style="width: 100px;" type="text" name="agee" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<label for="age_stue">终</label>
				<a id="search_stu_submit">查询</a>
			</form>
			<!-- 查询部分--end -->
		</div>
		<!-- 工具栏区 -- end -->
		
		<!-- 添加学员信息区 -- start -->
		<div id="add_stu_info">
			<form id="add_stu_form" class="easyui-form" method="post">
				<div>
					<label for="nicknamestu">昵称</label>
					<input id="nicknamestu" type="text" name="user.nickname" class="easyui-validatebox" data-options="required:true" placeholder="请输入昵称"/>
				</div>
				<div>
					<label for="passwordstu">密码</label>
					<input id="passwordstu" type="text" name="user.password" class="easyui-validatebox" data-options="required:true" placeholder="请输入密码"/>
				</div>
				<div>
					<label for="passwordstu2">确认密码</label>
					<input id="passwordstu2" type="text" name="password2" class="easyui-validatebox" data-options="required:true" placeholder="请确认密码"/>
				</div>
				<div>
					<label for="namestu">姓名</label>
					<input id="namestu" type="text" name="user.name" class="easyui-validatebox" data-options="required:true" placeholder="请输入姓名"/>
				</div>
				<div>
					<label for="sexstu">性别</label>
					<select id="sexstu" class="easyui-combobox" name="user.sex" data-options="editable:false" style="width: 150px;height: 30px;">
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div>
					<label for="agestu">年龄</label>
					<input id="agestu" type="number" name="user.age" min="2" max="200" class="easyui-numberbox" data-options="required:true" placeholder="请输入年龄"/>
				</div>
				<div>
					<label for="brithdaystu">生日</label>
					<input id="brithdaystu" type="date" name="user.brithday" class="easyui-datebox" data-options="required:true" placeholder="请选择出生日期"/>
				</div>
				<div>
					<label for="addressstu">地址</label>
					<input id="addressstu" type="text" name="user.address" class="easyui-validatebox" data-options="required:true" placeholder="请输入地址"/>
				</div>
				<div>
					<label for="tellstu">电话</label>
					<input id="tellstu" type="text" name="user.tell" class="easyui-validatebox" data-options="required:true" placeholder="请输入电话"/>
				</div>
				<div>
					<label for="qqstu">QQ</label>
					<input id="qqstu" type="text" name="user.qq" class="easyui-validatebox" data-options="required:true" placeholder="请输入qq号码"/>
				</div>
				<div>
					<label for="emailstu">邮箱</label>
					<input id="emailstu" type="text" name="user.email" class="easyui-validatebox" data-options="required:true,validType:email" placeholder="请输入邮箱号码"/>
				</div>
				<div>
					<label for="typestu">类型</label>
					<select id="typestu" name="user.type" class="easyui-combobox" data-options="editable:false" style="width:150px;height: 30px;">
						<option value="学员" selected="selected">学员</option>
						<option value="教练">教练</option>
						<option value="管理员">管理员</option>
					</select>
				</div>
				<div>
					<label for="briefintroductionstu">个人简介</label>
					<input id="briefintroductionstu" type="text" name="user.briefintroduction" class="easyui-validatebox" data-options="required:true,multiline:true" style="width:300px;height:100px"  placeholder="请在这里输入个人简介"/>
				</div>
				<div>
					<label for="headstu">头像地址</label>
					<input id="headstu" type="text" name="user.head" class="easyui-validatebox" data-options="required:true"  placeholder="输入头像地址"/>
				</div>
				<div>
					<a id="add_stu_form_submit">提交</a>
					<a id="add_stu_form_reset">重置表单</a>
				</div>
			</form>
		</div>
		<!-- 添加学员信息区  -- end -->
		<!-- 修改学员信息区  -- start -->
		<div id="edit_stu_info">
			<form id="edit_stu_info_form" method="post">
				<div>
					<input type="hidden" name="user.id"/>
				</div>
				<div>
					<label for="nicknamestu_update">昵称</label>
					<input id="nicknamestu_update" type="text" name="user.nickname" class="easyui-validatebox" data-options="required:true,prompt:'请输入昵称'"/>
				</div>
				<div>
					<label for="passwordstu_update">密码</label>
					<input id="passwordstu_update" type="text" name="user.password" class="easyui-validatebox" data-options="required:true,prompt:'请输入密码'"/>
				</div>
				<div>
					<label for="namestu_update">姓名</label>
					<input id="namestu_update" type="text" name="user.name" class="easyui-validatebox" data-options="required:true,prompt:'请输入姓名'"/>
				</div>
				<div>
					<label for="sexstu_update">性别</label>
					<select id="sexstu_update" class="easyui-combobox" data-options="editable:false" name="user.sex" style="50px;">
						<option value="男">=选择性别=</option>
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</div>
				<div>
					<label for="agestu_update">年龄</label>
					<input id="agestu_update" type="number" name="user.age" min="2" max="200" class="easyui-numberbox" data-options="required:true,prompt:'请输入年龄'"/>
				</div>
				<div>
					<label for="brithdaystu_update">生日</label>
					<input id="brithdaystu_update" type="date" name="user.brithday" class="easyui-datebox" data-options="required:true,prompt:'请选择出生日期'"/>
				</div>
				<div>
					<label for="addressstu_update">地址</label>
					<input id="addressstu_update" type="text" name="user.address" class="easyui-validatebox" data-options="required:true,prompt:'请输入地址'"/>
				</div>
				<div>
					<label for="tellstu_update">电话</label>
					<input id="tellstu_update" type="text" name="user.tell" class="easyui-validatebox" data-options="required:true,prompt:'请输入电话'"/>
				</div>
				<div>
					<label for="qqstu_update">QQ</label>
					<input id="qqstu_update" type="text" name="user.qq" class="easyui-validatebox" data-options="required:true,prompt:'请输入qq号码'"/>
				</div>
				<div>
					<label for="emailstu_update">邮箱</label>
					<input id="emailstu_update" type="text" name="user.email" class="easyui-validatebox" data-options="required:true,validType:email,prompt:'请输入'"/>
				</div>
				<div>
					<label for="typestu_update">类型</label>
					<select id="typestu_update" name="user.type" class="easyui-combobox" data-options="editable:false" style="width:150px">
						<option value="学员" selected="selected">学员</option>
						<option value="教练">教练</option>
						<option value="管理员">管理员</option>
					</select>
				</div>
				<div>
					<label for="briefintroductionstu_update">个人简介</label>
					<input id="briefintroductionstu_update" type="text" name="user.briefintroduction" class="easyui-validatebox" data-options="required:true,multiline:true,prompt:'请在这里输入个人简介'" style="width:300px;height:100px"/>
				</div>
				<div>
					<label for="headstu_update">头像地址</label>
					<input id="headstu_update" type="text" name="user.head" class="easyui-validatebox" data-options="required:true,prompt:'输入头像地址'"/>
				</div>
				<div>
					<a id="edit_stu_info_form_submit">提交</a>
				</div>
			</form>
		</div>
		<!-- 修改学员信息区  -- end -->
		<script type="text/javascript">
			$(function (){
				$('#stuAll').datagrid({
					url: '<%=basePath%>htuser/htSelectAllStu',
					loadMsg: '数据加载中.....',
					fitColumns: true,
					singleSelect: true,
					striped: true,
					rownumbers: true,
					toolbar: '#toolbar',
					pagination: true,
					selected: true,
					pagePosition: 'bottom',
					pageList: [3,6,9,12,15],
					pageSize: 3,
					pageNumber: 1,
					onSelectPage: function (pageNumber, pageSize){
						$(this).pagination('loading');// 把分页（pagination）变成正在加载（loaded）状态。
						$('#stuAll').datagrid({
							url: '<%=basePath%>htuser/htSelectAllStu?pageNumber='+pageNumber+'&pageSize='+pageSize
						});
						//$('#naviPagination').panel('refresh', 'show_content.php?page='+pageNumber);
						/* $(this).pagination('loaded');//把分页（pagination）变成加载完成（loaded）状态。
						$(this).pagination('refresh',{//改变选项，并刷新分页栏信息
							total: ,
							pageNumber: pageNumber
						}); */
						//href: 'navi/selectAllNavi?pageNumber='+pageNumber+'&pageSize='+pageSize
					}
					
				});
				/* --初始化工具栏区 --start--  */
				$('#add_stu').linkbutton({
					iconCls: 'icon-add'
				});
				$('#edit_stu').linkbutton({
					iconCls: 'icon-edit'
				});
				$('#remove_stu').linkbutton({
					iconCls: 'icon-remove'
				});
				/* --初始化工具栏区 --end--  */
				/* --初始化添加窗口 --start--  */
				$('#add_stu_info').dialog({
					title: '添加学员信息',
					width: 350,
					height: 300,
					closed: true,
					inline: false,
					modal: true,
					fit: false
			 	});
				
			 	$('#add_stu_form_submit').linkbutton({
			 		iconCls: 'icon-save'
			 	});
			 	$('#add_stu_form_reset').linkbutton({});
				/* --初始化添加窗口 --end--  */
				/* --初始化修改窗口 --start--  */
				$('#edit_stu_info').dialog({
					title: '修改学员信息',
					closed: true
			 	});
				
			 	$('#edit_stu_info_form_submit').linkbutton({});
			 	/* --初始化修改窗口 --end--  */
			 	/* 查询按钮初始化--start-- */
				$('#search_stu_submit').linkbutton({
					iconCls: 'icon-search'
				});
			 	/* 查询按钮初始化--end-- */
			});
			/* --工具栏区相关按钮动作 --start--  */
			$('#add_stu').bind('click', function(){
				$('#add_stu_info').dialog('open');
			});
			/* --添加窗口提交按钮动作 --start--  */
			$('#add_stu_form_submit').bind('click',function(){
				
				$('#add_stu_form').form('submit',{
					url: '<%=basePath%>htuser/htAddStu',
					onSubmit: function (){
						//return $(this).form('enableValidation').form('validate');
					},
					success: function (d){
						$('#add_stu_form').form('clear');//清除表单信息
					}
				});
				$('#add_stu_info').dialog('close');
				location.replace('htuser/htSelectAllStu?user.type=学员');
			});
			/* --添加窗口提交按钮动作 --end--  */
			/* --添加窗口重置按钮动作 --start--  */
			$('#add_stu_form_reset').linkbutton().bind('click',function(){
				$('#add_stu_form').form('reset');//表单重置
			});
			/* --添加窗口重置按钮动作 --end--  */
			/* --修改窗口提交按钮动作 --start--  */
			$('#edit_stu').bind('click',function (){
				//获取选中的数据
				var row = $('#stuAll').datagrid('getSelected');
				/* if(row['id']==null){
					alert('请选择要修改的学员');
					return false;
				}else{
					alert('请');
				} */
				//打开修改学员信息的面板
				$('#edit_stu_info').panel({
					closed: false,
			   	 	shadow: true,
			   	 	fit: true,
			   	 	inline: false
				});
				
				//将获取的数据填充到form表单中
				$('#edit_stu_info_form').form('load',{
					'user.id': row['id'],
					'user.nickname': row['nickname'],
					'user.password': row['password'],
					'user.name': row['name'],
					'user.sex': row['sex'],
					'user.age': row['age'],
					'user.brithday': row['brithday'],
					'user.address': row['address'],
					'user.tell': row['tell'],
					'user.qq': row['qq'],
					'user.email': row['email'],
					'user.type': row['type'],
					'user.briefintroduction': row['briefintroduction'],
					'user.head': row['head']
				});
			});
			//提交按钮处理代码
			$('#edit_stu_info_form_submit').bind('click',function(){
				$('#edit_stu_info_form').form('submit',{
					url: '<%=basePath%>htuser/htEditStu',
					onSubmit: function (){
					},
					success: function (d){
						$('#edit_stu_info_form').form('clear');//清除表单信息
						$('#edit_stu_info').dialog({
							title: '添加导航信息',
							shadow: false,
							closed: true
					 	});
						location.replace('<%=basePath%>htuser/htSelectAllStu?user.type=学员');//再次去请求数据，来更新页面数据
					}
				});
			});
			/* --修改窗口提交按钮动作 --end--  */
			/* --删除窗口提交按钮动作 --start--  */
			$('#remove_stu').bind('click',function(){
				//获取选中的数据
				var row = $('#stuAll').datagrid('getSelected');
				//$.messager.confirm('删除学员', '确定要删除'+row.name+row.type+"吗？");
				confirm('确定要删除 '+row.name+' '+row.type+'吗？');
				$('#remove_stu').attr('href','htuser/htRemoveStu?user.id='+row.id);
			});
			/* --删除窗口提交按钮动作 --end--  */
			/* --查询学员信息--start--- */
			$('#search_stu_submit').bind('click',function (){
				$('#search_stu').form('submit',{
					url: '<%=basePath%>htuser/htSearchStu',
					onSubmit: function (){
						//alert('提交之前发生');
					},
					success: function (data){
						$('#search_stu').form('clear');//清除表单信息
						$('#stuAll').datagrid('reload');
					}
				});
			});
			/* --查询学员信息--end--- */
		</script>
	</body>
</html>