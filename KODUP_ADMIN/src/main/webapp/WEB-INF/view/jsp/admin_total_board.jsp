<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_total_board.css">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_total_board.js"></script>


<title>admin_total_board</title>
</head>
<body>
<main>
  <!-- 검색 폼 -->
    <h4 style="padding-left:40px;">통합 게시물 관리</h4> <br>
    <div class="row g-2" style="padding-left:40px; max-width:1000px;" >
      <div class="col-sm-6 col-md-10 col-lg-10">
        <form class="needs-validation" novalidate="">
          <div class="row g-3">
	          <div class="col-md-2" style="font-size:23px;">
	              게시판
	           </div>
            <div class="col-md-4" style="width:200px; margin-left:-50px;">
			    <select class="form-select" aria-label="Default select example" size='1' style="width:150px;">
				  <option selected>전체</option>
				  <option value="1">QnA</option>
				  <option value="2">자유</option>
				  <option value="3">정보공유</option>
				  <option value="4">구인</option>
				  <option value="5">구직</option>
				</select>
		   </div>
		   <div class="col-md-3" style="margin-left:-20px;">
             <input type='date' class="select_date">
	       </div>
	       <span class="col-md-1" style="font-size:23px; width:25px; margin-left:-40px;">~</span>
	       <div class="col-md-3" style="margin-left:0px;">
             <input type='date' class="select_date">
	       </div>
          </div>
          <hr class="my-2">
          <div class="row g-3">
              <div class="col-md-2" style="font-size:23px;">
	              검색어
	           </div>
	          <div class="col-sm-6 col-lg-6" style="margin-left:-50px;">
			     <input class="form-control form-control-sm" type="text" aria-label=".form-control-sm example" placeholder="검색어를 입력하세요" style="height:38px;">
			   </div>
			  <div class="d-grid gap-2 col-lg-2 text-white btnFindstr" style="margin-left:-1px;">
	            <button class=" w-100 btn btn-md text-white" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">검색</button>
	          </div> 
    <hr class="my-4">
          </div>
		  
        </form>
      </div>
    </div>
    
    <!-- 게시물 리스트 -->
    <div class="baik_board_view" >
    <ul>
		<li class='title'> <!-- 타이틀 -->
			<span class='sno'>No</span>
			<span class='boardType'>게시판</span>
			<span class='subject'>제목</span>
			<span class='nickname'>작성자</span>
			<span class='nal'>작성일</span>
			<span class='viewcount'>조회수</span>
			<span class='delete_btn'>삭제</span>
		</li>
		
		<!--<c:forEach var='v' items="${list }" varStatus='status'> -->
		<li class='item'>
				<span class='sno'>1</span>
				<span class='boardType'>자유</span>
				<span class='subject'>언능 취업하고 싶네요</span>
				<span class='nickname'>힐따기요</span>
				<span class='nal'>2023.01.01</span>
				<span class='viewcount' >14</span>
				<span class='delete_btn'><button type="button" class="btn btn-danger btn-sm">삭제</button></span>
		</li>
		<li class='item'>
				<span class='sno'>2</span>
				<span class='boardType'>자유</span>
				<span class='subject'>언능 취업하고 싶네요</span>
				<span class='nickname'>힐따기요</span>
				<span class='nal'>2023.01.01</span>
				<span class='viewcount' >14</span>
				<span class='delete_btn'><button type="button" class="btn btn-danger btn-sm">삭제</button></span>
		</li>
		<li class='item'>
				<span class='sno'>3</span>
				<span class='boardType'>자유</span>
				<span class='subject'>언능 취업하고 싶네요</span>
				<span class='nickname'>힐따기요</span>
				<span class='nal'>2023.01.01</span>
				<span class='viewcount' >14</span>
				<span class='delete_btn'><button type="button" class="btn btn-danger btn-sm">삭제</button></span>
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
	   
</body>
</html>