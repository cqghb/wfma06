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
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/animate.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>bootstarp/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/swiper.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/swiper.animate1.0.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/main.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=BAfStGXfXpo0uT7e77SFkD95W2POcAij"></script>
	
	<style type="text/css">
		
	</style>
  </head>
  
  <body class="all">
  	<s:include value="../common/navgation.jsp"></s:include>
		<div class="main-content">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<!-- 轮播课程 -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<c:forEach items="${coursesList }" var="cl" varStatus="csl">
								<c:choose>
									<c:when test="${csl.first}">
										<li data-target="#carousel-example-generic" data-slide-to="${csl.index }" class="active"></li>
									</c:when>
									<c:otherwise>
										<li data-target="#carousel-example-generic" data-slide-to="${csl.index }"></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</ol>
						
						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<c:forEach items="${coursesList }" var="cl" varStatus="clnum">
								<c:choose>
									<c:when test="${clnum.first }">
										<div class="item active">
											<img class="lbkc" src="<%=basePath%>${cl.courseimg}" alt="${cl.coursename}">
											<div class="carousel-caption">
												<h3>${cl.coursename}</h3>
												<p>${cl.courseexplain}</p>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="item">
											<img class="lbkc" src="<%=basePath%>${cl.courseimg}" alt="${cl.coursename}">
											<div class="carousel-caption">
												<h3>${cl.coursename}</h3>
												<p>${cl.courseexplain}</p>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</div>
						
						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<span class="panel-title">万府新闻</span>
							<a href="<%=basePath%>wfDynamic/newList.action?actionName=wfDynamic/newList.action" class="gd">更多</a>
						</div>
						<div class="panel-body">
							<table class="xwList">
								<tbody>
									<c:forEach items="${dynamicList }" var="dy" varStatus="status">
									<tr class="one">
										<td width="30px">${status.index+1 }</td>
										<td>
											<a href="<%=basePath%>wfDynamic/detailsDy.action?dynamic.dyid=${dy.dyid }">${dy.dyname }</a>
										</td>
										<td style="float: right;width: 160px;">
											<fmt:formatDate value="${dy.dytime }" type="both"/>
										</td>
									</tr>
									<tr class="two">
										<td colspan="3">
											<c:choose>
												<c:when test="${fn:length(dy.dydetails)>'100'}">
													<c:set var="dydetails" value="${dy.dydetails }"/>
													<c:set var="dydetails" value="${fn:substring(dydetails, 0, 100)}" />
													${dydetails }
													<div>
														<a href="<%=basePath%>wfDynamic/detailsDy.action?dynamic.dyid=${dy.dyid }">阅读全部</a>
													</div>
												</c:when>
												<c:otherwise>
													${dy.dydetails }
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
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
							<div class="courseTenList">
								<c:forEach items="${allCurse }" var="allCurse">
								<div class="courseItem">
									<div class="courseImage">
										<a href="<%=basePath%>course/DetailsCourseBYId.action?course.courseid=${allCurse.courseid}">
											<img alt="课程图片" src="<%=basePath%>${allCurse.courseimg}" width="100%" height="100%"/>
										</a>
									</div>
									<div class="courseName">
										<a href="<%=basePath%>course/DetailsCourseBYId.action?course.courseid=${allCurse.courseid}">
											${allCurse.coursename }
										</a>
									</div>
									<div class="courseExplain">
										<a href="<%=basePath%>course/DetailsCourseBYId.action?course.courseid=${allCurse.courseid}">
											<c:choose>
												<c:when test="${fn:length(allCurse.courseexplain)>'10'}">
													<c:set var="courseexplain" value="${fn:substring(allCurse.courseexplain, 0, 10)}" />
													${courseexplain }
												</c:when>
												<c:otherwise>
													${allCurse.courseexplain }
												</c:otherwise>
											</c:choose>
										</a>
									</div>
								</div>
							</c:forEach>
							</div>
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
  </body>
  	<script type="text/javascript">
  		var sContent =
	  		"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>万府武术培训基地</h4>" + 
	  		"<img style='float:right;margin:4px' id='imgDemo' src='<%=basePath%>/images/logo/logo.jpg' width='139' height='104' title='万府武术培训基地'/>" + 
	  		"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>联系电话：18888888888</p>" + 
	  		"</div>";
  	
  	
		var map = new BMap.Map("panel-body");          // 创建地图实例  
		var point = new BMap.Point(103.92514,30.571819);  // 创建点坐标  
		map.centerAndZoom(point, 20);               // 初始化地图，设置中心点坐标和地图级别 
		map.addControl(new BMap.NavigationControl());
		var marker = new BMap.Marker(point);        // 创建标注    
		map.addOverlay(marker);
		
		var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
		map.centerAndZoom(point, 15);
		map.addOverlay(marker);
		marker.addEventListener("click", function(){          
		   this.openInfoWindow(infoWindow);
		   //图片加载完毕重绘infowindow
		   document.getElementById('imgDemo').onload = function (){
			   infoWindow.redraw();   //防止在网速较慢，图片未加载时，生成的信息框高度比图片的总高度小，导致图片部分被隐藏
		   }
		});
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
