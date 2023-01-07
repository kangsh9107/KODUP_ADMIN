<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_pixel_exchange.jsp</title>
</head>

<style>
#exchange>.cho_title{
    background: rgba(33, 37, 41);
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
<h4>환전승인</h4>
<hr/>
*지급준비금
<br/>
<span>지급준비금 현황 : </span><input type="text">
<br/>
<span>지급준비금 ()% 기준으로 700,000 원 입니다.</span>
<hr/>

*환전 신청 리스트
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
      <span class='exchange_no'></span>
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
<div id="ExchangePageBtn">
	<input type="button" value="1">
	<input type="button" value="2">
	<input type="button" value="3">
	<input type="button" value="4">
	<input type="button" value="5">
</div>

</body>
</html>