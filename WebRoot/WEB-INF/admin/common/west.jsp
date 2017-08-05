<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>"/> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>west page</title>
		<link href="<%=basePath%>easyui/themes/default/easyui.css" rel="stylesheet" type="text/css"/>
		<link href="<%=basePath%>easyui/themes/icon.css" rel="stylesheet" type="text/css"/>
		
		<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>easyui/jquery.easyui.min.js"></script>
		<script src="<%=basePath%>easyui/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
	</head>
	<body>
		<ul id="tree"></ul>
		<script type="text/javascript">
			$(function (){
				var datas = [{
					id: 1,
					text: "万府信息管理",
					animate: true,
					attributes: {
						url: '<%=basePath%>htwfifmt/wffmt'
					},
					children: [{
						id: 11,
						text: "查看万府信息",
						attributes: {
							url: '<%=basePath%>htwfifmt/selectWF'
						}
					}]
				},{
					id: 2,
					text: "学员管理",
					animate: true,
					attributes: {
						url: '<%=basePath%>htuser/userMan'
					},
					children: [{
						id: 21,
						text: "查看学员列表",
						attributes: {
							url: '<%=basePath%>htuser/htSelectAllStu?user.type=学员'
						}
					}]
				},{
					id: 3,
					animate: true,
					text: "教练管理",
					attributes: {
						url: '<%=basePath%>htteacher/teacherMan'
					},
					children: [{
						id: 31,
						text: "查看教练列表",
						attributes: {
							url: '<%=basePath%>htteacher/htSelectAllTea'
						}
					}]
				},{
					id: 4,
					animate: true,
					text: "导航管理",
					attributes: {
						url: '<%=basePath%>navi/naviMan'
					},
					children: [{
						id: 41,
						text: "查看导航列表",
						attributes: {
							url: '<%=basePath%>navi/selectAllNavi'
						}
					}]
				},{
					id: 5,
					text: "个人信息管理",
					attributes: {
						url: '<%=basePath%>htadmin/admininfMan',
					},
					children: [{
						id: 51,
						text: "查看个人信息",
						attributes: {
							url: '<%=basePath%>htadmin/adminifm'
						}
					}]
				},{
					id: 4,
					animate: true,
					text: "课程管理",
					attributes: {
						url: '<%=basePath%>navi/naviMan'
					},
					children: [{
						id: 41,
						text: "查看课程列表",
						attributes: {
							url: '<%=basePath%>navi/selectAllNavi'
						}
					}]
				}];   
				$('#tree').tree({
					data: datas,
					onClick: function (node){
						if(node.attributes){
							optenTab(node.text,node.attributes.url,node.iconCls);
						}
					}
				});
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
	</body>
</html>