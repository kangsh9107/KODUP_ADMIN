<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_mento_certification.css"> 

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script defer src="js/admin_mento_certification.js"></script>
<title>admin_mento_certification</title>
</head>
<body>


<!-- 검색폼 -->
   <div style="padding-left:40px;">
	<h3 style="font-weight: bold;">멘토 인증 관리</h3>
	    <hr><br>
   </div>
<form class="frm_search5">
   <div class="container" style="max-width:1000px; margin-left: 0px; padding-left:40px;">
	  <div class="row g-2">
	     <div class="col-md-3">
	    	<img src="images/default image.png" alt="..." class="img-thumbnail img" style="width:230px; height: 230px;">
	    	<div class="modal">
				  <span class="close">&times;</span>
				  <img class="modal_content" id="img01">
		    </div>
	      </div>
	   <div class="col-md-8" style="margin-left: 40px;">
	      <div class="container">
	        <div class="row g-2">
			   <div class="col-md-2" style="font-size:20px;">
				  아이디
		       </div>
			   <div class="col-md-5">
				  <input class="form-control form-control-sm" type="text" name="id" readOnly aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		    </div>
		    <br>
		    <div class="row g-2">
		        <div class="col-md-2" style="font-size:20px;">
			       가입일
			    </div>
		        <div class="col-md-5">
			        <input class="form-control form-control-sm" type="text" name="join_date" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		     </div>
		     <br>
		     <div class="row g-2">
		        <div class="col-md-2" style="font-size:20px;">
			       이메일
			    </div>
		        <div class="col-md-5">
			        <input class="form-control form-control-sm" type="text" name="email" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		     </div>
		     <br>
		     <div class="row g-2">
		        <div class="col-md-2" style="font-size:20px;">
			       현재 등급
			    </div>
		        <div class="col-md-5">
			        <input class="form-control form-control-sm" type="text" name="GRADE" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		     </div>
		     <br>
		       <div class="row g-2" style="margin-left:170px;">
			        <div class="col-md-2">
					    <select id= "selectbox" name="grade" class="form-select" aria-label="Default select example" 
					            size='1' style="width:100px; margin-left: 75px;">
						  <option value="0">일반</option>
						  <option value="1">퍼스널</option>
						  <option value="2">플러스</option>
						  <option value="3">파트너</option>
						</select>
				   </div>
		        </div>
		      </div>
			</div>
		</div>
		<input type='hidden' name='nowPage' value='${cpVo.nowPage }'/> 
	  <hr class="my-4"  style="width:800px; ">
	</div>
</form>
	<br>
	
<!--멘토 신청 리스트 -->
 	<div class="baik_mento_view" >
   	  <ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='no'>No</span>
			<span class='id'>아이디</span>
			<span class='grade'>현재 등급</span>
			<span class='email'>이메일</span>
			<span class='join_date'>가입일</span>
		</li>
		
		<c:forEach var='v' items="${list }" varStatus='status'>
			<c:choose>
				<c:when test="${v.grade == 0 }">
					<li class='item' onclick="view('${v.career_certificate}', '${v.id }','${v.join_date }','${v.email }', '일반')"> 
						<span class='no'>${status.count }</span>
						<span class='id'>${v.id }</span>
						<span class='grade'>
					      <c:choose>
							<c:when test="${v.grade eq '0'}">일반</c:when>
							<c:when test="${v.grade eq '1'}">퍼스널</c:when>
							<c:when test="${v.grade eq '2'}">플러스</c:when>
							<c:when test="${v.grade eq '3'}">파트너</c:when>
			               </c:choose>
			            </span>
						<span class='email'>${v.email }</span>
						<span class='join_date'>${v.join_date }</span>
						<input type="hidden" value="${v.career_certificate }">
						<input type="hidden" value="${v.mento_status }">
					</li>
				</c:when>
				<c:when  test="${v.grade == 1 }">
					<li class='item' onclick="view('${v.career_certificate}', '${v.id }','${v.join_date }','${v.email }', '퍼스널 멘토')"> 
						<span class='no'>${status.count }</span>
						<span class='id'>${v.id }</span>
						<span class='grade'>
					      <c:choose>
							<c:when test="${v.grade eq '0'}">일반</c:when>
							<c:when test="${v.grade eq '1'}">퍼스널</c:when>
							<c:when test="${v.grade eq '2'}">플러스</c:when>
							<c:when test="${v.grade eq '3'}">파트너</c:when>
			               </c:choose>
			            </span>
						<span class='email'>${v.email }</span>
						<span class='join_date'>${v.join_date }</span>
						<input type="hidden" value="${v.career_certificate }">
						<input type="hidden" value="${v.mento_status }">
					</li>
				</c:when>
				<c:when  test="${v.grade == 2 }">
					<li class='item' onclick="view('${v.career_certificate}', '${v.id }','${v.join_date }','${v.email }', '플러스 멘토')"> 
						<span class='no'>${status.count }</span>
						<span class='id'>${v.id }</span>
						<span class='grade'>
					      <c:choose>
							<c:when test="${v.grade eq '0'}">일반</c:when>
							<c:when test="${v.grade eq '1'}">퍼스널</c:when>
							<c:when test="${v.grade eq '2'}">플러스</c:when>
							<c:when test="${v.grade eq '3'}">파트너</c:when>
			               </c:choose>
			            </span>
						<span class='email'>${v.email }</span>
						<span class='join_date'>${v.join_date }</span>
						<input type="hidden" value="${v.career_certificate }">
						<input type="hidden" value="${v.mento_status }">
					</li>
				</c:when>
				<c:when  test="${v.grade == 3 }">
					<li class='item' onclick="view('${v.career_certificate}', '${v.id }','${v.join_date }','${v.email }', '파트너 멘토')"> 
						<span class='no'>${status.count }</span>
						<span class='id'>${v.id }</span>
						<span class='grade'>
					      <c:choose>
							<c:when test="${v.grade eq '0'}">일반</c:when>
							<c:when test="${v.grade eq '1'}">퍼스널</c:when>
							<c:when test="${v.grade eq '2'}">플러스</c:when>
							<c:when test="${v.grade eq '3'}">파트너</c:when>
			               </c:choose>
			            </span>
						<span class='email'>${v.email }</span>
						<span class='join_date'>${v.join_date }</span>
						<input type="hidden" value="${v.career_certificate }">
						<input type="hidden" value="${v.mento_status }">
					</li>
				</c:when>
			</c:choose>
		</c:forEach>
	  </ul>
	  
<!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
		<c:if test="${cpVo.startPage > 1 }">
		   <div class="btn-group me-2" role="group" aria-label="First group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick= 'movePage(${cpVo.startPage - 1})' 
		              style="background-color: #2d3644;"><</button>
		   </div>
	    </c:if>
		<c:forEach var='i' begin='${cpVo.startPage }' end='${cpVo.endPage }'>
		   <div class="btn-group me-2" role="group" aria-label="Second group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${i })'
		              style="background-color: #2d3644;">${i}</button>
		   </div>
		</c:forEach>
		<c:if test="${cpVo.endPage lt pageVo.totPage }">
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${cpVo.endPage + 1})'
		              style="background-color: #2d3644;">></button>
		   </div>
	    </c:if>
		</div>
	  </div>
</body>
</html>