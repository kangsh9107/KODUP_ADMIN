<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_use.jsp</title>
<script src='/js/admin_chart_use.js'></script>
</head>

<style>
#admin_chart_use{border : 1px solid #c8c9ca;width : 655px;height : 360px;margin-left:40px;}
#admin_chart_use #admin_chart_header{position : relative;height: 40px;border-bottom : 1px solid #c8c9ca;}
#admin_chart_use #admin_chart_header_right{position : absolute;top : 5px;right :5px;}
#admin_chart_use #admin_chart_main{position : absolute;}
#admin_chart_use #curve_chart{width: 650px;height: 300px;}
</style>

<body>
<!-- HIDDEN -->
<form class='frm_chart_use' style="display:none;">
	<input type='text' name='nal' value="${asVo.nal}"/>
</form>

<div style="display:none;">
	<input id="before4" type="text"  value="${asVo.before4}">	
	<input id="before8" type="text"  value="${asVo.before8}">	
	<input id="before12" type="text" value="${asVo.before12}">	
	<input id="before16" type="text" value="${asVo.before16}">	
	<input id="before20" type="text" value="${asVo.before20}">	
	<input id="before24" type="text" value="${asVo.before24}">	
</div>
	<div style="padding-left:40px;">
	  <h3 style="font-weight: bold;">이용 통계</h3>
		  <hr><br>
	</div>
	<div id="admin_chart_use">
		<div id="admin_chart_header">
			<div id="admin_chart_header_right">
				<span>조회일자</span>
				<input id="searchNal" type='date' value="${asVo.nal}" onchange="searchNal(this.value)"> <!-- 디폴트로 오늘날짜찍히도록 -->
				<input type='button' value="조회" onclick="showChart()">
			</div>
		</div>
		<div id="admin_chart_main">
			<div id="curve_chart" ></div>
		</div>
	</div>    
</body>
</html>