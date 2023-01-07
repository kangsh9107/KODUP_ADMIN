<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<title>WEB-INF/view/jsp/admin_pixel_exchange.jsp</title>
</head>

<style>
.cho_exchange_list{
  border: 1px solid #c8c9ca;
	margin-left : 40px;
	padding: 20px;
	width: 1000px;
}
#exchange>.cho_title{
    background-color: #2d3644;
    color:#fff;
    padding:2px;
    margin:3px 0;
    width : 890px;
    
}
#exchange span{
	display : inline-block;
    text-align: center;
    
}
#exchange .item{
	margin-top : 5px;
	vertical-align : center;
	border : 1px solid #aaa;
	width : 890px;
}

#exchange .exchange_no{ width: 50px; }
#exchange .exchange_id{ width: 80px; }
#exchange .exchange_pixel{ width: 200px; }
#exchange .exchange_money{ width: 100px; }
#exchange .exchange_account{ width: 200px; }
#exchange .exchange_date{ width: 100px; }
#exchange .exchange_button{ width: 120px; }

#exchange .item:hover{
    background-color: #ddd;
    cursor: pointer;
}

#ExchangePageBtn{
	width : 890px;
	text-align : center;
	margin-top : 10px;
}
</style>

<body>

<div style="padding-left:40px;">
    <h3>환전 승인</h3>
	  <hr><br>
</div>
   <div style="padding-left:40px;">
	<span style="font-size:23px;">지급준비금 현황 : </span><input type="text" readOnly style="width:250px; height:35px;">
	<br/><br>
	<span style="font-size:15px;">지급준비금 ()% 기준으로 700,000 원 입니다.</span>
	<hr/>
</div>
<div class="cho_exchange_list" style="padding-left:40px;">
     <div id="exchange">
	   <div class='cho_title'>
	      <span class='exchange_no'>NO</span>
	      <span class='exchange_id'>ID</span>
	      <span class='exchange_pixel'>환전신청액(픽셀)</span>
	      <span class='exchange_money'>환전될금액</span>
	      <span class='exchange_account'>계좌</span>
	      <span class='exchange_date'>환전신청일</span>
	      <span class='exchange_button'>환전승인</span>
	   </div>
	   
	   <div class='item'>
	      <span class='exchange_no'>1</span>
	      <span class='exchange_id'>a001</span>
	      <span class='exchange_pixel'>10000  pixel</span>
	      <span class='exchange_money'>8000  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>2</span>
	      <span class='exchange_id'>a002</span>
	      <span class='exchange_pixel'>15000  pixel</span>
	      <span class='exchange_money'>12000  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>3</span>
	      <span class='exchange_id'>a003</span>
	      <span class='exchange_pixel'>12000  pixel</span>
	      <span class='exchange_money'>9600  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>4</span>
	      <span class='exchange_id'>a004</span>
	      <span class='exchange_pixel'>7000  pixel</span>
	      <span class='exchange_money'>5600  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>5</span>
	      <span class='exchange_id'>a005</span>
	      <span class='exchange_pixel'>8000  pixel</span>
	      <span class='exchange_money'>6400  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>6</span>
	      <span class='exchange_id'>a006</span>
	      <span class='exchange_pixel'>9000  pixel</span>
	      <span class='exchange_money'>7200  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>7</span>
	      <span class='exchange_id'>a007</span>
	      <span class='exchange_pixel'>10000  pixel</span>
	      <span class='exchange_money'>8000  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>8</span>
	      <span class='exchange_id'>a008</span>
	      <span class='exchange_pixel'>40000  pixel</span>
	      <span class='exchange_money'>32000  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>9</span>
	      <span class='exchange_id'>a009</span>
	      <span class='exchange_pixel'>20000  pixel</span>
	      <span class='exchange_money'>16000  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
	   <div class='item'>
	      <span class='exchange_no'>10</span>
	      <span class='exchange_id'>a010</span>
	      <span class='exchange_pixel'>13000  pixel</span>
	      <span class='exchange_money'>10400  원</span>
	      <span class='exchange_account'>110-1234-1234</span>
	      <span class='exchange_date'>2023-01-05</span>
	      <span class='exchange_button'><input type="button" value="환전승인"></span>
	   </div>
</div>

<!-- PageButton -->
	<div class="btn-toolbar" style="justify-content: center; margin-top:20px;" role="toolbar" aria-label="Toolbar with button groups">
	<!--<c:if test="${pageVo.startPage > 1 }"> -->
	   <div class="btn-group me-2" role="group" aria-label="First group">
	      <button type="button" class="btn btn-outline-light btn-sm" onclick= 'movePage(${pageVo.startPage - 1})' 
	              style="background-color: #2d3644;"><</button>
	   </div>
    </c:if>   
	   <!--<c:forEach var='i' begin='${pageVo.startPage }' end='${pageVo.endPage }'>-->
	   <div class="btn-group me-2" role="group" aria-label="Second group">
	      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${i })'
	              style="background-color: #2d3644;">1</button>
	   </div>
	   </c:forEach>
	   <!--<c:if test="${pageVo.endPage lt pageVo.totPage }">-->
	   <div class="btn-group" role="group" aria-label="Third group">
	      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${pageVo.endPage + 1})'
	              style="background-color: #2d3644;">></button>
	   </div>
	   </c:if>
	</div>
</div>
</body>
</html>