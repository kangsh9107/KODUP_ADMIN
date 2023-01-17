<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<title>WEB-INF/view/jsp/admin_pixel_exchange_rate.jsp</title>
<script src="js/admin_pixel_exchange_rate.js"></script>
</head>
<style>
#exchange_rate .exchange_rate_title{ width : 490px;  background-color: #2d3644;   color:#fff;    }
#exchange_rate .exchange_rate_item{  width : 490px;   margin-top : 2px;   border : 1px solid #aaa;}
#exchange_rate span{width: 100px; display : inline-block;	text-align : center;}
#exchange_rate input{display : inline-block;text-align : center;}
#exchange_rate .grade{ width: 110px; }
#exchange_rate .rate{ width: 100px; }
#exchange_rate .10000pixel{display : inline-block; width: 120px; }
#exchange_rate .won{ width: 150px; }
</style>


<body>
<form id="admin_pixel_rate_form">
    <div style="padding-left:40px;">
	  <h3 style="font-weight: bold;">환전 비율 변경</h3>
		  <hr>
	</div>
	<br/>
	<div style="padding-left:40px;">
	  <h5>등급별 환율 변경</h5>
	  <div id="exchange_rate">
		 <div class="exchange_rate_title">
			<span class="grade">회원등급</span>
			<span class="rate">환율</span>
			<span class="10000pixel">픽셀</span>
			<span class="won">환전금액(원)</span>
		 </div>
		 <div class="exchange_rate_item">
			<span class="grade">일반회원</span>
			<span class="rate"><input id="normal_rate" name="normal" type="text" value="${apVo.normal}" size="1">%</span>
			<span class="10000pixel"><input id="normal_pixel" type="text" size="3" value="10000">px</span>
			<span id="normal_won" class="won"></span>
		 </div>
		 <div class="exchange_rate_item">
			<span class="grade">퍼스널회원</span>
			<span class="rate"><input id="personal_rate" name="personal" type="text" value="${apVo.personal}" size="1">%</span>
			<span class="10000pixel"><input id="personal_pixel" type="text" size="3" value="10000">px</span>
			<span id="personal_won" class="won"></span>
		 </div>
		 <div class="exchange_rate_item">
			<span class="grade">플러스회원</span>
			<span class="rate"><input id="plus_rate" name="plus" type="text" value="${apVo.plus}" size="1">%</span>
			<span class="10000pixel"><input id="plus_pixel" type="text" size="3" value="10000">px</span>
			<span id="plus_won" class="won"></span>
		 </div>
		 <div class="exchange_rate_item">
			<span class="grade">파트너회원</span>
			<span class="rate"><input id="partner_rate" name="partner" type="text" value="${apVo.partner}" size="1">%</span>
			<span class="10000pixel"><input id="partner_pixel" type="text" size="3" value="10000">px</span>
			<span id="partner_won" class="won"></span>
		 </div>
	  </div>
	  
	  <button type="button" class="btn text-white" onclick="update_pixelrate()"style="background-color:#2d3644; margin-top: 3px; margin-left: 431px;">수정</button>
	  <hr class="my-4">
	</div>
</form>
</body>
</html>