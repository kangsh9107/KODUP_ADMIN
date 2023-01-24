<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_chart_pixel.jsp</title>
<script src='/js/admin_chart_pixel.js'></script>
</head>
<style>
#admin_chart_pixel{	border : 1px solid #c8c9ca;	width : 703px;	height : 500px;	margin-left:40px;}
#admin_chart_pixel #admin_chart_header{	position : relative;height: 40px;border-bottom : 1px solid #c8c9ca;}
#admin_chart_pixel #admin_chart_header_left{position : absolute;}
#admin_chart_pixel #admin_chart_header_right{position : absolute;margin-left: 300px;   margin-top: 5px;	}
#admin_chart_pixel #admin_chart_main{position : absolute;}
#admin_chart_pixel #curve_chart{width: 700px;height: 400px;}
</style>


<body>
<!-- HIDDEN -->
<form class='frm_chart_board' style="display:none;" >
	<input type='text' name='startNal' value="${asVo.startNal}"/>
	<input type='text' name='endNal'  value="${asVo.endNal}"/>
</form>

<!-- 차트데이터 HIDDEN -->
<!-- 데이터가0일때 바로ifnull써보고 안되면 임시테이블쪽으로 right join ifnull하기 참고)https://byul91oh.tistory.com/480 -->
<!-- 기준이 되는 group by절 repl_nal과 nal이 값이다를수잇음 일단빼고 -->
<div style="display:none;">
	<input type="text" id="PixelDataSize" value="${fn:length(PixelDataList)}">
	<c:forEach var="vo" items='${PixelDataList}' varStatus="status">
		<div>
			<span>${status.count}</span>
			<input id="mDate${status.count}"  type="text" value="${vo.mDate}">
			<input id="plusPixel${status.count}"  type="text" value="${vo.plusPixel}">
			<input id="minusPixel${status.count}" type="text" 
			value="${vo.minusPixel*-1}">
			
			
		</div>
	</c:forEach>
</div>

	<div style="padding-left:40px;">
	  <h3 style="font-weight: bold;">픽셀 통계</h3>
		  <hr><br>
	</div>
	<div id="admin_chart_pixel">
		<div id="admin_chart_header">
			<div id="admin_chart_header_right">
				<span>기간</span>
				<input type='date' id="startNal"value="${asVo.startNal}" onchange='StartNal(this.value)'>
				~
				<input type='date' id="endNal"value="${asVo.endNal}" onchange='EndNal(this.value)'>
				<input type='button' value="조회" onclick="showChart()">
			</div>
		</div>
		<div id="admin_chart_main">
			<div id="curve_chart" ></div>
		</div>
	</div>    

</body>
</html>