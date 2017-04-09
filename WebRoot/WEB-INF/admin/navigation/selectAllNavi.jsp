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
		<table id="navAll">
			<thead>
				<tr>
					<th data-options="field:'naid',width:'20px'">导航编号</th>
					<th data-options="field:'naname',width:'20px'">导航名称</th>
					<th data-options="field:'naurl',width:'100px'">链接地址</th>
					<th data-options="field:'nastate',width:'20px'">状态</th>
					<th data-options="field:'pid',width:'20px'">父节点编号</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${nav }" var="nav">
					<tr>
						<td>${nav.naid }</td>
						<td>${nav.naname }</td>
						<td>${nav.naurl }</td>
						<td>${nav.nastate }</td>
						<td>${nav.pid }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- 数据显示区 -- end -->
		<!-- 工具栏区 -- start -->
		<div id="toolbar">
			<a id="add_navi" style="margin:5px;">添加</a>
			<a id="edit_navi" style="margin:5px;">修改</a>
			<a id="remove_navi" style="margin:5px;">删除</a>
			<!-- 查询部分--start -->
			<form id="search_navigation" method="post">
				<label for="sdh">导航名称</label>
				<input id="sdh" style="width: 100px;" type="text" name="navi.naname" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<label for="szt">状态</label>
				<input id="szt" style="width: 100px;" type="text" name="navi.nastate" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<label for="sfjdbh">父节点编号</label>
				<input id="sfjdbh" style="width: 100px;" type="text" name="navi.pid" class="easyui-textbox" data-options="prompt:'可选择性输入'"/>
				<a id="search_navi">查询</a>
			</form>
			<!-- 查询部分--end -->
		</div>
		<!-- 工具栏区 -- end -->
		
		<!-- 分页面板--start -->
		<!-- <div id="naviPagination"></div> -->
		<!-- 分页面板--end -->
		
		<!-- 添加导航信息区 -- start -->
		<div id="add_navi_info">
			<form id="subNaviForm" method="post">
				<div>
					<label for="navi.naname">导航名称</label>
					<input type="text" name="navi.naname" class="easyui-validatebox" data-options="required:true,prompt:'请输入导航名称'"/>
				</div>
				<div>
					<label for="navi.naurl">导航路径</label>
					<input type="text" name="navi.naurl" class="easyui-validatebox" data-options="required:true,prompt:'输入导航页面路径'"/>
				</div>
				<div>
					<label for="navi.nastate">导航状态</label>
					<select id="cc" name="navi.nastate" class="easyui-combo" data-options="editable:false" style="width:150px">
						<option value="启用" selected="selected">启用</option>
						<option value="弃用">弃用</option>
					</select>
				</div>
				<div>
					<label for="navi.pid">导航父节点编号</label>
					<input type="text" name="navi.pid" class="easyui-numberbox" data-options="required:true,prompt:'输入导航父节点编号'"/>
				</div>
				<div>
					<a id="subNavi">提交</a>
					<a id="resNavi">重置表单</a>
				</div>
			</form>
		</div>
		<!-- 添加导航信息区  -- end -->
		<!-- 修改导航信息区  -- start -->
		<div id="edit_navi_info">
			<form id="editSubNaviForm" method="post">
				<div>
					<label for="navi.naid">导航编号</label>
					<input type="text" name="navi.naid" class="easyui-validatebox" data-options="editable:false"/>
				</div>
				<div>
					<label for="navi.naname">导航名称</label>
					<input type="text" name="navi.naname" class="easyui-validatebox" data-options="required:true,prompt:'请输入导航名称'"/>
				</div>
				<div>
					<label for="navi.naurl">导航路径</label>
					<input type="text" name="navi.naurl" class="easyui-validatebox" data-options="required:true,prompt:'输入导航页面路径'"/>
				</div>
				<div>
					<label for="navi.nastate">导航状态</label>
					<select id="cc" name="navi.nastate" class="easyui-combo" data-options="editable:false" style="width:150px">
						<option value="启用" selected="selected">启用</option>
						<option value="弃用">弃用</option>
					</select>
				</div>
				<div>
					<label for="navi.pid">导航父节点编号</label>
					<input type="text" name="navi.pid" class="easyui-numberbox" data-options="required:true,prompt:'输入导航父节点编号'"/>
				</div>
				<div>
					<a id="editSubNavi">提交</a>
				</div>
			</form>
		</div>
		<!-- 修改导航信息区  -- end -->
		<script type="text/javascript">
			$(function (){
				$('#navAll').datagrid({
					url: '<%=basePath%>navi/selectAllNavi',
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
						$('#navAll').datagrid({
							url: '<%=basePath%>navi/selectAllNavi?pageNumber='+pageNumber+'&pageSize='+pageSize
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
				$('#add_navi').linkbutton({
					iconCls: 'icon-add'
				});
				$('#edit_navi').linkbutton({
					iconCls: 'icon-edit'
				});
				$('#remove_navi').linkbutton({
					iconCls: 'icon-remove'
				});
				/* --初始化工具栏区 --end--  */
				/* --初始化添加窗口 --start--  */
				$('#add_navi_info').dialog({
					title: '添加导航信息',
					closed: true
			 	});
				
			 	$('#subNavi').linkbutton({});
			 	$('#resNavi').linkbutton({});
				/* --初始化添加窗口 --end--  */
				/* --初始化修改窗口 --start--  */
				$('#edit_navi_info').dialog({
					title: '修改导航信息',
					closed: true
			 	});
				
			 	$('#editSubNavi').linkbutton({});
			 	/* --初始化修改窗口 --end--  */
			 	/* 查询按钮初始化--start-- */
				$('#search_navi').linkbutton({
					iconCls: 'icon-search'
				});
			 	/* 查询按钮初始化--end-- */

				/* 分页面板初始化--start-- */
				$('#naviPagination').pagination({
					total: 100,//总页数
					pageSize: 3,//每页大小
					pageNumber: 1,//首次加载时显示的页码
					pageList: [3,6,9,12,15],
					href: '<%=basePath%>navi/selectAllNavi?pageNumber=1&pageSize=3',
					onSelectPage: function (pageNumber, pageSize){
						$(this).pagination('loading');// 把分页（pagination）变成正在加载（loaded）状态。
						$('#navAll').datagrid({
							url: '<%=basePath%>navi/selectAllNavi?pageNumber='+pageNumber+'&pageSize='+pageSize
						});
						//$('#naviPagination').panel('refresh', 'show_content.php?page='+pageNumber);
						$(this).pagination('loaded');//把分页（pagination）变成加载完成（loaded）状态。
						$(this).pagination('refresh',{//改变选项，并刷新分页栏信息
							//total: ,
							pageNumber: pageNumber
						});
						//href: 'navi/selectAllNavi?pageNumber='+pageNumber+'&pageSize='+pageSize
					}
				});
				/* 分页面板初始化--end-- */
			});
			/* --工具栏区相关按钮动作 --start--  */
			$('#add_navi').bind('click', function(){    
				$('#add_navi_info').panel({
					closed: false,
			   	 	shadow: false,
			   	 	inline: false
				});
			});
			/* --添加窗口提交按钮动作 --start--  */
			$('#subNavi').linkbutton().bind('click',function(){
				$('#subNaviForm').form('submit',{
					url: '<%=basePath%>navi/addNavi',
					onSubmit: function (){
						//console.log('提交之前的回调函数');
					},
					success: function (d){
						//console.log('提交成功后的回调函数'+d);
						$('#subNaviForm').form('clear');//清除表单信息
						$('#add_navi_info').dialog({
							title: '添加导航信息',
							shadow: false,
							closed: true
					 	});
						location.replace('<%=basePath%>navi/selectAllNavi');//再次去请求数据，来更新页面数据
					}
				});
			});
			/* --添加窗口提交按钮动作 --end--  */
			/* --添加窗口提交按钮动作 --start--  */
			$('#resNavi').linkbutton().bind('click',function(){
				$('#subNaviForm').form('reset');//表单重置
			});
			/* --添加窗口提交按钮动作 --end--  */
			/* --修改窗口提交按钮动作 --start--  */
			$('#edit_navi').linkbutton().bind('click',function (){
				//打开修改导航信息的面板
				$('#edit_navi_info').panel({
					closed: false,
			   	 	shadow: false,
			   	 	inline: false
				});
				//获取选中的数据
				var row = $('#navAll').datagrid('getSelected');
				//将获取的数据填充到form表单中
				$('#editSubNaviForm').form('load',{
					'navi.naid': row['naid'],
					'navi.naname': row['naname'],
					'navi.naurl': row['naurl'],
					'navi.nastate': row['nastate'],
					'navi.pid': row['pid']
				});
			});
			//提交按钮处理代码
			$('#editSubNavi').linkbutton().bind('click',function(){
				$('#editSubNaviForm').form('submit',{
					url: '<%=basePath%>navi/editNavi',
					onSubmit: function (){
						//console.log('提交之前的回调函数');
					},
					success: function (d){
						//alert('提交成功后的回调函数'+d);
						$('#editSubNaviForm').form('clear');//清除表单信息
						$('#edit_navi_info').dialog({
							title: '添加导航信息',
							shadow: false,
							closed: true
					 	});
						location.replace('<%=basePath%>navi/selectAllNavi');//再次去请求数据，来更新页面数据
					}
				});
			});
			/* --修改窗口提交按钮动作 --end--  */
			/* --删除窗口提交按钮动作 --start--  */
			$('#remove_navi').linkbutton().bind('click',function(){
				//获取选中的数据
				var row = $('#navAll').datagrid('getSelected');
				confirm('确定要删除'+row.naname+'导航项目吗？');
				$('#remove_navi').attr('href','navi/removeNavi?navi.naid='+row.naid);
				
			});
			/* --删除窗口提交按钮动作 --end--  */
			/* --查询导航信息--start--- */
			$('#search_navi').linkbutton().bind('click',function (){
				$('#search_navigation').form('submit',{
					url: '<%=basePath%>navi/searchNavi',
					onSubmit: function (){
						//alert('提交之前发生');
					},
					success: function (data){
						alert(data);
						$('#search_navigation').form('clear');//清除表单信息
						$('#navAll').datagrid('reload');
					}
				});
			});
			/* --查询导航信息--end--- */
		</script>
	</body>
</html>