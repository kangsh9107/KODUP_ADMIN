<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_ban.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_ban.js"></script>
<title>admin_ban</title>
</head>
<body>
<main>
<!-- 검색 폼 -->
	<div style="padding-left:40px;">
	    <h3 style="font-weight: bold;">정지 관리</h3>
		   <hr><br>
	</div>
   
    <div class="row g-2" style="padding-left:48px; max-width:1000px;" >
       <div class="col-sm-6 col-md-10 col-lg-10">
          <form class="frm_search3" onsubmit="return false;">
            <div class="row g-2">
	           <div class="col-md-4" style="width:200px;">
				    <select class="form-select" aria-label="Default select example" 
				            size='1' style="width:150px;" onchange="selectCondition(this.value)">
				      <option value="null">검색어</option>      
					  <option value="id">아이디</option>
				      <option value="email">이메일</option>
				      <option value="nickname">닉네임</option>
				      <option value="join_date">가입일</option>
					</select>
			   </div>
	          <div class="col-md-4">
			     <input class="form-control form-control-sm findStr" name="findStr" value='${mpVo.findStr}' type="text" aria-label=".form-control-sm example" placeholder="검색어를 입력하세요" style="height:38px;">
			   </div>
			  <div class="d-grid gap-2 col-2 text-white">
	            <button class=" w-100 btn btnSearch btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">검색</button>
	          </div> 
		    </div>
		      <input type='hidden' name='nowPage' value='${mpVo.nowPage }'/> 
	          <input type='hidden' name='id' value='${mpVo.id }'/>
	          <input type='hidden' name='condition' value='${mpVo.condition }'/>
		   <hr class="my-4" style="width:750px; margin-left:-6px;"> 
          </form>
        </div>
     </div>
     <br>
<!-- 정지 리스트 전체 회원들을 띄우나 밴된 회원이 제일 위로 뜨게 -->
<!-- 회원 리스트 -->
    <div class="baik_ban_view" >
      <ul>
		<li class='title'> <!-- 타이틀 -->
		  <div>
			<span class='no'>No</span>
			<span class='id'>아이디</span>
			<span class='nickname'>닉네임</span>
			<span class='email'>이메일</span>
			<span class='ban_status'>상태</span>
		  </div>	
			<span class='ban_active'>실행</span>
		</li>
		
		<c:forEach var='v' items="${list }" varStatus='status'>
			<li class='item'>
			   <div>
					<span class='no'>${status.count }</span>		
					<span class='id'>${v.id }</span>
					<span class='nickname'>${v.nickname }</span>
					<span class='email'>${v.email }</span>
					<span class='ban_status'>
					   <c:choose>
					     <c:when test="${v.ban_status eq '0'}">활동</c:when>
					     <c:when test="${v.ban_status eq '1'}">정지</c:when>
					     <c:when test="${v.ban_status eq '2'}">탈퇴</c:when>
					   </c:choose>
					</span>
			   </div>
					<span class='ban_active'>
						<button type="button" class="btn btnBan btn-danger btn-sm"
						        onclick='make_ban("${v.id }")'>정지</button>
						<button type="button" class="btn btnActivity btn-success btn-sm"
						        onclick='make_activity("${v.id}")'>해제</button>
				    </span>
			</li>
		</c:forEach>
	  </ul>
	  <!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
		<c:if test="${mpVo.startPage > 1 }">
		   <div class="btn-group me-2" role="group" aria-label="First group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick= 'movePage(${mpVo.startPage - 1})' 
		              style="background-color: #2d3644;"><</button>
		   </div>
	    </c:if>   
		   <c:forEach var='i' begin='${mpVo.startPage }' end='${mpVo.endPage }'>
		   <div class="btn-group me-2" role="group" aria-label="Second group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${i })'
		              style="background-color: #2d3644;">${i }</button>
		   </div>
		   </c:forEach>
		   <c:if test="${mpVo.endPage lt mpVo.totPage }">
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${mpVo.endPage + 1})'
		              style="background-color: #2d3644;">></button>
		   </div>
		   </c:if>
		</div>
	  </div>
</main>
</body>
</html>