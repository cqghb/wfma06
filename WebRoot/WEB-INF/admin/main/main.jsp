<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>后台主页面</title>
		<link href="<%=basePath%>easyui/themes/default/easyui.css" rel="stylesheet" type="text/css"/>
		<link href="<%=basePath%>easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
		<script src="<%=basePath%>easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
		<style type="text/css">
			
		</style>
	</head>
	<body id="adminMain">
	    <div id="north">
	    	<div class="easyui-tabs" data-options="fit:true,border:false" id="tabs">
				
			</div>
	    </div>
	    <div id="south">
	    	
	    </div>   
	    <div id="east">
	    	
	    </div>   
	    <div id="west">
	    	<div class="easyui-tabs" data-options="fit:true,border:false">
				<ul id="tree"></ul>
			</div>
	    </div>   
	    <div id="center">
	    	<div class="easyui-tabs" data-options="fit:true,border:false" id="tabs">
				<div align="center" data-options="title:'首页'">
					<h2>欢迎使用系统</h2>
				</div>
			</div>
	    </div>
	</body>
	<script type="text/javascript">
		$(function(){
			$('#adminMain').layout({
				fit: true
			});
			$('#adminMain').layout('add',{
				region: 'north',
				title: '万府武术后台管理系统',
				height: '130px',
				/* href: '../common/north.jsp', */
				collapsible: false,
				split: false
			});
			$('#adminMain').layout('add',{
				region: 'south',
				title: '底部',
				height: '70px',
				collapsible: false,
				/* href: '../common/south.jsp', */
				split: false
			});
			$('#adminMain').layout('add',{
				region: 'east',
				title: '右边',
				width: '200px',
				/* href: '../common/east.jsp', */
				iconCls:'icon-reload',
				collapsible: false,
				split: false
			});
			$('#adminMain').layout('add',{
				region: 'west',
				title: '左边',
				width: '200px',
				/* href: '../common/west.jsp', */
				collapsible: false,
				split: false,
				tools: [{
					iconCls:'icon-add',
					handler:function(){alert('add');}
			    },{
					iconCls:'icon-remove',
					handler:function(){alert('remove');}
			    }]		
			});
			$('#adminMain').layout('add',{
				region: 'center',
				title: '中间',
				split: false,
				/* href: '../common/center.jsp', */
				collapsible: false
			});
			var treeData = [{
				text: '根目录1',
				iconCls: 'icon-menu',
				children: [{
					text: '导航管理',
					iconCls: 'icon-menu',
					attributes: {
						url: ''
					}
				},{
					text: '万府信息管理',
					iconCls: 'icon-user',
					attributes: {
						url: ''
					}
				},{
					text: '教练管理',
					iconCls: 'icon-user',
					attributes: {
						url: ''
					}
				},{
					text: '学员管理',
					iconCls: 'icon-user',
					attributes: {
						url: ''
					}
				},{
					text: '个人信息管理',
					iconCls: 'icon-user',
					attributes: {
						url: ''
					}
				}]
			}];

			$('#tree').tree({
				data: treeData,
				lines: true,
				onClick: function (node){
					if(node.attributes){
						optenTab(node.text,node.attributes.url,node.iconCls);
					}
				}
			});
			alert("aaaa");
			function optenTab(text,url,iconCls){
				if($('#tabs').tabs('exists',text)){
					$('#tabs').tabs('select',text);
				}else{
					var content = "<iframe iframeborder='0' scrolling='auto' style='width:100%;height:100%;' src="+url+"></iframe>";
					$('#tabs').tabs('add',{
						title: text,
						closable: true,
						content: content,
						iconCls: iconCls
					});
				}
			}
			
		}); 
	</script>
</html>