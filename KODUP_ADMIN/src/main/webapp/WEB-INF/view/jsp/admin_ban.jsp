<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <form class="needs-validation" novalidate="">
            <div class="row g-2">
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
			  <div class="d-grid gap-2 col-2 text-white">
	            <button class=" w-100 btn btn-md text-white" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">검색</button>
	          </div> 
		    </div>
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
			<span class='no'>No</span>
			<span class='id'>아이디</span>
			<span class='ban_status'>상태</span>
			<span class='ban_active'>실행</span>
		</li>
		
		<!--<c:forEach var='v' items="${list }" varStatus='status'> -->
		<li class='item'>
			<span class='no'>1</span>		
			<span class='id'>lgtwins0501</span>
			<span class='ban_status'>정지</span>
			<span class='ban_active'>
				<button type="button" class="btn btn-danger btn-sm">정지</button>
				<button type="button" class="btn btn-success btn-sm">해제</button>
		    </span>
		</li>
		<li class='item'>
			<span class='no'>2</span>		
			<span class='id'>lgtwins0501</span>
			<span class='ban_status'>정지</span>
			<span class='ban_active'>
				<button type="button" class="btn btn-danger btn-sm">정지</button>
				<button type="button" class="btn btn-success btn-sm">해제</button>
		    </span>
		</li>
		<li class='item'>
			<span class='no'>3</span>
			<span class='id'>dustn384</span>
			<span class='ban_status'>활동 중</span>
			<span class='ban_active'>
				<button type="button" class="btn btn-danger btn-sm">정지</button>
				<button type="button" class="btn btn-success btn-sm">해제</button>
		    </span>
		</li>
		<!--</c:forEach>-->
	  </ul>
	  <!-- PageButton -->
		<div class="btn-toolbar" style="justify-content: center;" role="toolbar" aria-label="Toolbar with button groups">
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
</main>
</body>
</html>