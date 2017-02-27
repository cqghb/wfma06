<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
    
    <title>万府武术</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="武术,万府武术,蒲兰杨">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/global.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>bootstarp/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/swiper.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=BAfStGXfXpo0uT7e77SFkD95W2POcAij"></script>
	
	<style type="text/css">
			
	</style>
  </head>
  
  <body class="all">
  	<s:include value="../common/navgation.jsp"></s:include>
  
	<%-- <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<ul class="nav nav-tabs" role="tablist">
		  		<c:forEach items="${navList }" var="na" varStatus="status">
		  			<c:if test="${status.index == 0 }">
		  				<li role="presentation" class="active">
		  					<a class="nav navdh" href="${na.naurl }?naid=${na.naid }">${na.naname }</a>
		  				</li>
		  			</c:if>
		  			<c:if test="${status.index > 0 }">
		  				<li role="presentation">
			  				<a class="nav navdh" href="${na.naurl }?naid=${na.naid }">${na.naname }</a>
			  			</li>
		  			</c:if>
		  		</c:forEach>
	  			<li role="presentation">
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
	  			</li>
			</ul>
		</div>
	</nav>
	  --%>
		<div class="main-content">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="panel panel-primary ppp-wfjj">
						<div class="panel-heading">
							<span class="panel-title">万府简介</span>
							<a href="<%=basePath%>wfinformation/wfmajjgd.action" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<c:if test="${wfInformation.wfimgurl !='' }">
								<div class="wfinimg">
									<img class="wfimg" src="<%=basePath%>${wfInformation.wfimgurl}"/>
								</div>
							</c:if>
							<div class="wfexplain">
								<c:choose>
									<c:when test="${fn:length(wfInformation.wfexplain)>'180'}">
										<c:set var="wfexplain" value="${wfInformation.wfexplain }"/>
										<c:set var="wfexplain" value="${fn:substring(wfexplain, 0, 180)}" />
										${wfexplain }
										<div>
											<a href="#" style="color:#000000;">查看全文 >></a>
										</div>
									</c:when>
									<c:otherwise>
										<div>
											<font style="color:#000000;">${wfInformation.wfexplain }</font>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div class="panel panel-primary ppp-wfjj">
						<div class="panel-heading">
							<span class="panel-title">校长简介</span>
							<a href="<%=basePath%>user/xzDetails.action" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<img alt="校长头像" src="<%=basePath%><s:property value="user.head"/>" height="200px" width="100px"/>
							<s:property value="user.nickname"/>
							<s:property value="user.briefintroduction"/>
						</div>
					</div>
					<div class="panel panel-primary ppp-wfjj">
						<div class="panel-heading">
							<span class="panel-title">教练</span>
							<a href="<%=basePath%>user/jlDetails.action?actionName=user/jlDetails.action" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<table style="background-color: black;">
								<tr>
									<td>头像</td>
									<td>姓名</td>
									<td>地址</td>
									<td>年龄</td>
								</tr>
							<c:forEach items="${jl }" var="jl">
								<tr>
									<td>
										<img alt="教练头像" src="<%=basePath%>${jl.head}" width="30px" height="30px">
									</td>
									<td>${jl.name }</td>
									<td>${jl.address }</td>
									<td>${jl.age }</td>
								</tr>
							</c:forEach>
							</table>
						</div>
					</div>
					<div class="panel panel-primary ppp-wfjj">
						<div class="panel-heading">
							<span class="panel-title">最近报名学员</span>
							<a href="<%=basePath%>user/xyDetails.action?actionName=user/xyDetails.action" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<table style="background-color: black;">
								<tr>
									<td>头像</td>
									<td>姓名</td>
									<td>地址</td>
									<td>年龄</td>
								</tr>
							<c:forEach items="${newXY }" var="newXY">
								<tr>
									<td>
										<img alt="学员头像" src="<%=basePath%>${newXY.head}" width="30px" height="30px">
									</td>
									<td>${newXY.name }</td>
									<td>${newXY.address }</td>
									<td>${newXY.age }</td>
								</tr>
							</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<span class="panel-title">万府新闻</span>
							<a href="#" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<c:forEach items="${dynamicList }" var="dy" varStatus="status">
								<!-- 编号 标题 内容 日期 -->
								<span>${status.index+1 }</span>
								<span>
									<a href="#">${dy.dyname }</a>
								</span>
								<span>
									<fmt:formatDate value="${dy.dytime }" pattern="yy-MM-dd"/>
								</span>
								<div>
									<c:choose>
										<c:when test="${fn:length(dy.dydetails)>'100'}">
											<c:set var="dydetails" value="${dy.dydetails }"/>
											<c:set var="dydetails" value="${fn:substring(dydetails, 0, 100)}" />
											${dydetails }
											<a href="#">查看全文</a>
										</c:when>
										<c:otherwise>
											${dy.dydetails }
										</c:otherwise>
									</c:choose>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<span class="panel-title">课程设置</span>
							<a href="<%=basePath%>course/kcDetails.action?actionName=course/kcDetails.action" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<table style="background-color: black;">
							<tr>
								<th>课程图片</th>
								<th>课程名称</th>
								<th>课程说明</th>
							</tr>
							<c:forEach items="${allCurse }" var="allCurse">
								<tr>
									<td>
										<img alt="课程图片" src="<%=basePath%>${allCurse.courseimg}" width="30px" height="30px">
									</td>
									<td>${allCurse.coursename }</td>
									<td>${allCurse.courseexplain }</td>
								</tr>
							</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<span class="panel-title">万府地址</span>
						</div>
						<div id="panel-body" class="panel-body mappanel">
							
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
    
    <s:debug></s:debug>
  </body>
  	<script type="text/javascript">
		var map = new BMap.Map("panel-body");          // 创建地图实例  
		var point = new BMap.Point(103.92514,30.571819);  // 创建点坐标  
		map.centerAndZoom(point, 20);               // 初始化地图，设置中心点坐标和地图级别 
		map.addControl(new BMap.NavigationControl());
		var marker = new BMap.Marker(point);        // 创建标注    
		map.addOverlay(marker);
		var myPushpin = new BMap.PushpinTool(map);         // 创建标注工具实例    
		myPushpin.addEventListener("markend", function(e){  // 监听事件，提示标注点坐标信息   
		 alert("您标注的位置：" +     
		       e.marker.getPoint().lng + ", " +     
		       e.marker.getPoint().lat);    
		});    
		myPushpin.open();
	</script>
	<script type="text/javascript">
	
		$('.navdh').click(function (event){
			event.preventDefault();
			event.stopPropagation();
			$('.main-content').load(this.href);
		});
	
		
	  /**
		*滚轮滚动整个页面上下滑动效果
		*
		**/
		var swiper = new Swiper('.swiper-container', {
		    pagination: '.swiper-pagination',
		    uniqueNavElements: true,
		    direction: 'vertical',
		    slidesPerView: 1,
		    paginationClickable: true,
		    spaceBetween: 30,
		    mousewheelControl: true
		});
		/**
		 *万府简介左右滑动效果
		 **/
		var swiperwfjj = $('.swiper-container3').swiper({
			pagination: '.swiper-p2',
			uniqueNavElements: true,
		    slidesPerView: 1,
		    paginationClickable: true,
		    spaceBetween: 30,
		    mousewheelControl: false
		});
		/***
		*新闻左右滑动特效
		*
		***/
		var swiperxw = $('.swiper-conatiner4').swiper({
			pagination: '.swiper-conatiner4 .swiper-pagination',
			uniqueNavElements: true,
		    direction: 'horizontal',
		    slidesPerView: 1,
		    paginationClickable: true,
		    spaceBetween: 30,
		    mousewheelControl: false
		});
		
		var wfjjSwiper = $('.swiper-container2').swiper({
			//wrapperClass:'swiper-wrapper-wfjj',
			//slideClass:'swiper-slide-wfjj',
			//paginationClass:'swiper-pagination-wfjj',
			pagination:'.swiper-pagination',
			uniqueNavElements: true,
			paginationType:'bullets',
			paginationClickable:true,
			paginationHide:true,
			nested:true,
			loop:true,
			effect:'cube',
		    grabCursor:true,
		    cube: {
		        shadow:true,
		        slideShadows:true,
		        shadowOffset:20,
		        shadowScale:0.94
		    }
		});
	</script>
</html>
