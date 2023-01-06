<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_member_list.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<title>admin_member_list</title>
</head>
<body>
<main>
<!-- 검색 폼 -->
    <h4 style="padding-left:40px;">회원 관리</h4>
    <div class="row g-2" style="padding-left:200px; max-width:1000px;" >
      <div class="col-sm-6 col-md-10 col-lg-10">
        <form class="needs-validation" novalidate="">
          <div class="row g-3">
            <div class="col-md-4" style="width:200px;">
			    <select class="form-select" aria-label="Default select example" size='1' style="width:150px;">
				  <option selected>전체</option>
				  <option value="1">일반회원</option>
				  <option value="2">퍼스널회원</option>
				  <option value="3">플러스회원</option>
				  <option value="4">파트너회원</option>
				</select>
		   </div>
		  </div>
          <hr class="my-2">
          <div class="row g-3">
            <div class="col-md-4" style="width:200px;">
			    <select class="form-select" aria-label="Default select example" size='1' style="width:150px;">
				  <option selected>아이디</option>
				  <option value="1">이메일</option>
				  <option value="2">닉네임</option>
				  <option value="3">가입일</option>
				</select>
		   </div>
          <div class="col-md-4">
		     <input class="form-control form-control-sm" type="text" aria-label=".form-control-sm example" placeholder="검색어를 입력하세요" style="height:38px;">
		   </div>
		  </div>
		  <hr class="my-2"> 
		  <div class="d-grid gap-2 col-6 mx-auto text-white">
            <button class=" w-100 btn btn-md text-white" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">검색</button>
          </div> 
        </form>
      </div>
    </div>
    
    <hr class="my-4">
    
    <!-- 회원 리스트 -->
    <div class="baik_member_view" >
    <ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='no'>No</span>
			<span class='id'>아이디</span>
			<span class='nickname'>닉네임</span>
			<span class='email'>이메일</span>
			<span class='join_date'>가입일</span>
		</li>
		
		<!--<c:forEach var='v' items="${list }" varStatus='status'> -->
		<li class='item'>
			<span class='no'>1</span>
			<span class='id'>lgtwins0501</span>
			<span class='nickname'>힐따기요</span>
			<span class='email'>lgtwins0501@naver.com</span>
			<span class='join_date'>2023.01.01</span>
		</li>
		<li class='item'>
			<span class='no'>2</span>
			<span class='id'>lgtwins0501</span>
			<span class='nickname'>힐따기요</span>
			<span class='email'>lgtwins0501@naver.com</span>
			<span class='join_date'>2023.01.01</span>
		</li>
		<li class='item'>
			<span class='no'>1</span>
			<span class='id'>lgtwins0501</span>
			<span class='nickname'>힐따기요</span>
			<span class='email'>lgtwins0501@naver.com</span>
			<span class='join_date'>2023.01.01</span>
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
  </main>
</main>    
</body>
</html>