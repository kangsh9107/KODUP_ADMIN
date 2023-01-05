<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/view/jsp/admin_pixel_exchange_rate.jsp</title>
</head>
<style>
#exchange_rate .exchange_rate_title{
 background: rgba(33, 37, 41);
    color:#fff;
    width : 460px;
}

#exchange_rate .exchange_rate_item{
    width : 460px;
    margin-top : 2px;
    border : 1px solid #aaa;
}

#exchange_rate span{
	display : inline-block;
	text-align : center;
}

#exchange_rate input{
	display : inline-block;
	text-align : center;
}

#exchange_rate .grade{ width: 100px; }
#exchange_rate .rate{ width: 100px; }
#exchange_rate .10000pixel{ width: 90px; }
#exchange_rate .won{ width: 150px; }




</style>
<body>
<h4>환율변경</h4>
<hr/>
*등급별 환율 변경
<br/>
<div id="exchange_rate">
	<div class="exchange_rate_title">
		<span class="grade">회원등급</span>
		<span class="rate">환율</span>
		<span class="10000pixel">1만픽셀기준</span>
		<span class="won">환전금액(원)</span>
	</div>
	
	<div class="exchange_rate_item">
		<span class="grade">일반회원</span>
		<span class="rate"><input type="text" value="60" size="1">%</span>
		<span class="10000pixel">10,000pixel</span>
		<span class="won">6,000원</span>
	</div>
	<div class="exchange_rate_item">
		<span class="grade">퍼스널회원</span>
		<span class="rate"><input type="text" value="70" size="1">%</span>
		<span class="10000pixel">10,000pixel</span>
		<span class="won">7,000원</span>
	</div>
	<div class="exchange_rate_item">
		<span class="grade">플러스회원</span>
		<span class="rate"><input type="text" value="80" size="1">%</span>
		<span class="10000pixel">10,000pixel</span>
		<span class="won">8,000원</span>
	</div>
	<div class="exchange_rate_item">
		<span class="grade">파트너회원</span>
		<span class="rate"><input type="text" value="90" size="1">%</span>
		<span class="10000pixel">10,000pixel</span>
		<span class="won">9,000원</span>
	</div>
</div>

<hr/>

<input type="button" value="수정하기">
</body>
</html>