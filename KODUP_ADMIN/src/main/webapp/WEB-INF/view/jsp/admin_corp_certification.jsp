<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_corp_certification.css"> 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script defer src="js/admin_corp_certification.js"></script>
<title>admin_corp_certification</title>
</head>
<body>
<!-- 기업 정보 미리보기 칸 -->
<h4 style="padding-left:40px;">기업인증</h4><br>
<div class="container" style="max-width:1000px; margin-left: 0px; padding-left:40px;">
	<div class="row g-2">
	   <div class="col-md-3">
	    	<img src="images/로고1.png" alt="..." class="img-thumbnail" style="width:230px; height: 230px;">
	   </div>
	   <div class="col-md-8" style="margin-left: 40px;">
	     <div class="container">
	     
		   <div class="row g-2">
			   <div class="col-md-3" style="font-size:20px;">
				  담당자
		       </div>
			   <div class="col-md-5">
				  <input class="form-control form-control-sm" type="text" readOnly aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2">
		        <div class="col-md-3" style="font-size:20px;">
			       담당자 연락처
			    </div>
		        <div class="col-md-5">
			        <input class="form-control form-control-sm" type="text" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		   </div>
		   <br>
		   <div class="row g-2">
		        <div class="col-md-3" style="font-size:20px;">
			      담당자 이메일
			    </div>
		        <div class="col-md-5">
			        <input class="form-control form-control-sm" type="text" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		   </div>
		  </div>
		</div>
		      
	  </div>
	  <hr class="my-4">
	</div>

<!-- 기업정보 리스트 -->
 <div class="baik_corp_view" >
    <ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='no'>No</span>
			<span class='corp_name'>기업 이름</span>
			<span class='manager_name'>담당자</span>
			<span class='manager_phone'>담당자 연락처</span>
			<span class='manager_email'>담당자 이메일</span>
		</li>
		
		<!--<c:forEach var='v' items="${list }" varStatus='status'> -->
		<li class='item'> 
			<span class='no'>1</span>
			<span class='corp_name'>브리지텍</span>
			<span class='manager_name'>백재민</span>
			<span class='manager_phone'>010-7623-6632</span>
			<span class='manager_email'>lgtwins0501@naver.com</span>
		</li>
		<li class='item'> 
			<span class='no'>1</span>
			<span class='corp_name'>브리지텍</span>
			<span class='manager_name'>백재민</span>
			<span class='manager_phone'>010-7623-6632</span>
			<span class='manager_email'>lgtwins0501@naver.com</span>
		</li>
		<li class='item'> 
			<span class='no'>1</span>
			<span class='corp_name'>브리지텍</span>
			<span class='manager_name'>백재민</span>
			<span class='manager_phone'>010-7623-6632</span>
			<span class='manager_email'>lgtwins0501@naver.com</span>
		</li>
		<!--</c:forEach>-->
	  </ul>
	  <!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
		<!--<c:if test="${pageVo.startPage > 1 }"> -->
		   <div class="btn-group me-2" role="group" aria-label="First group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick= 'movePage(${pageVo.startPage - 1})' 
		              style="background-color:#2d3644;"><</button>
		   </div>
	    </c:if>   
		   <!--<c:forEach var='i' begin='${pageVo.startPage }' end='${pageVo.endPage }'>-->
		   <div class="btn-group me-2" role="group" aria-label="Second group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${i })'
		              style="background-color:#2d3644;">1</button>
		   </div>
		   </c:forEach>
		   <!--<c:if test="${pageVo.endPage lt pageVo.totPage }">-->
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${pageVo.endPage + 1})'
		              style="background-color:#2d3644;">></button>
		   </div>
		   </c:if>
		</div>
	  </div>
</body>
</html>