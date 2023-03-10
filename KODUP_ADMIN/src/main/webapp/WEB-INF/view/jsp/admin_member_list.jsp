<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_member_list.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_member_list.js"></script>
<title>admin_member_list</title>
</head>
<body>
<main>
<!-- 검색 폼 -->
    <div style="padding-left:40px;">
    <h3 style="font-weight: bold;">회원 관리</h3>
    <hr>
    <br>
    </div>
    
   <form class="frm_search2" onsubmit="return false;">
    <div class="row g-2" style="padding-left: 48px; margin-top:-25px;" >
      <div class="col-sm-6 col-md-10 col-lg-10">
          <div class="row g-3">
            <div class="col-md-2" style="font-size:23px; width:200px;">
              등급
            </div>
            
            <div class="col-md-4" style="width:200px; margin-left:-42px;">
			    <select class="form-select" aria-label="Default select example" size='1' 
			            style="width:150px;" id="selectBox" onchange="selectGrade(this.value)">
			      <option value="null">등급</option>
				  <option value="0">일반</option>
				  <option value="1">퍼스널</option>
				  <option value="2">플러스</option>
				  <option value="3">파트너</option>
				</select>
		   </div>
		  </div>
		</div>
          <hr class="my-4" style="width:1000px;">
        <div>
          <div class="row g-3" style="width:1000px;">
            <div class="col-md-2" style="font-size:23px;">
              검색어
            </div>
            <div class="col-md-4" style="width:200px; margin-left:-10px;">
			    <select class="form-select" aria-label="Default select example" 
			            size='1' style="width:150px;" onchange="selectCondition(this.value)">
			      <option value="null">검색어</option>
				  <option value="id">아이디</option>
				  <option value="email">이메일</option>
				  <option value="nickname">닉네임</option>
				  <option value="join_date">가입일</option>
				</select>
		   </div>
	          <div class="col-md-4" style="margin-left:-30px;">
			     <input class="form-control form-control-sm findStr" type="search" name="findStr" value="${mpVo.findStr}" aria-label=".form-control-sm example" placeholder="검색어를 입력하세요" style="height:38px;">
			   </div>
			  <div class="d-grid gap-2 col-1 text-white" style="margin-left: 10px;">
	            <button class=" w-100 btn btnSearch btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">검색</button>
	          </div> 
		  </div>
		 <input type='hidden' name='nowPage' value='${mpVo.nowPage }'/> 
		 <input type='hidden' name='id' value='${mpVo.id }'/>
		 <input type='hidden' name='grade' value='${mpVo.grade }'/>
		 <input type='hidden' name='condition' value='${mpVo.condition }'/>
		 
        </div>
       <hr class="my-4" style="width:1000px;"> 
    </div>
  </form>
  <br>
    
    
 <!-- 회원 리스트 -->
    <div class="baik_member_view" >
    <ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='no'>No</span>
			<span class='id'>아이디</span>
			<span class='nickname'>닉네임</span>
			<span class="grade">등급</span>
			<span class='email'>이메일</span>
			<span class='join_date'>가입일</span>
		</li>
		
		<c:forEach var='v' items="${list }" varStatus='status'>
		<li class='item' onclick="view('${v.id}')">
			<span class='no'>${status.count }</span>
			<span class='id'>${v.id} </span>
			<span class='nickname'>${v.nickname }</span>
			<span class='grade'>
				<c:choose>
				  <c:when test="${v.grade eq 0}">일반</c:when>
				  <c:when test="${v.grade eq 1}">퍼스널</c:when>
				  <c:when test="${v.grade eq 2}">플러스</c:when>
				  <c:when test="${v.grade eq 3}">파트너</c:when>
			   </c:choose>
			</span>
			<span class='email'>${v.email }</span>
			<span class='join_date'>${v.join_date }</span>
			<input type="hidden" value="${v.ban_status }" class="ban_status">
		</li>
		</c:forEach>
	  </ul>
	  <!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
		<c:if test="${mpVo.startPage > 1 }">
		   <div class="btn-group me-2" role="group" aria-label="First group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick= 'movePage(${mpVo.startPage - 1})' 
		              style="background: rgba(33, 37, 41);"><</button>
		   </div>
	    </c:if>   
		<c:forEach var='i' begin='${mpVo.startPage }' end='${mpVo.endPage }'>
		   <div class="btn-group me-2" role="group" aria-label="Second group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${i })'
		              style="background: rgba(33, 37, 41);">${i }</button>
		   </div>
		</c:forEach>
		<c:if test="${mpVo.endPage lt mpVo.totPage }">
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${mpVo.endPage + 1})'
		              style="background: rgba(33, 37, 41);">></button>
		   </div>
		 </c:if>
		</div>
	  </div>
  </main>
</main>    
</body>
</html>