<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   <div style="padding-left:40px;">
	 <h3 style="font-weight: bold;">기업 인증</h3>
	    <hr><br>
   </div>
   
   <form class="frm_search4">
   <div class="container" style="max-width:1000px; margin-left: 0px; padding-left:48px;">
	  <div class="row g-2">
	     <div class="col-md-3">
	    	<img src="images/사업자등록증.jpg"  name="corp_license" alt="..." class="img-thumbnail img" style="width:230px; height: 230px;">
	    	<div class="modal">
				  <span class="close">&times;</span>
				  <img class="modal_content" id="img01">
		    </div>
	     </div>
	     <div class="col-md-8" style="margin-left: 40px;">
	         <div class="container">
	            <div class="row g-2">
			       <div class="col-md-3" style="font-size:20px;">
				          담당자
		           </div>
			    <div class="col-md-5">
				    <input class="form-control form-control-sm" name="manager_name" type="text" readOnly aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		  </div>
		   <br>
		  <div class="row g-2">
		      <div class="col-md-3" style="font-size:20px;">
			       담당자 연락처
			   </div>
		       <div class="col-md-5">
			        <input class="form-control form-control-sm" name="manager_phone"type="text" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		   </div>
		   <br>
		   <div class="row g-2">
		        <div class="col-md-3" style="font-size:20px;">
			      담당자 이메일
			    </div>
		        <div class="col-md-5">
			        <input class="form-control form-control-sm" name="manager_email" type="text" readOnly aria-label=".form-control-sm example" style="height:38px;">
			    </div>
		   </div>
		   <div class="d-grid gap-2 col-md-2 text-white" style="margin-left:297px; margin-top:20px;">
		       <button class=" w-100 btn btnConfirm btn-md text-white" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">승인</button>
		   </div>
		  </div>
		</div>      
	  </div>
	     <input type='hidden' name='nowPage' value='${cpVo.nowPage }'/> 
		 <input type='hidden' name='id' value='${cpVo.id }'/>
	  <hr class="my-4" style="width:800px; ">
	</div>
	</form>
    <br>
    
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
		
		   <c:forEach var='v' items="${list }" varStatus='status'> 
			<li class='item' onclick="view('${v.corp_license }', '${v.manager_name }' , '${v.manager_phone }', '${v.manager_email }')"> 
				<span class='no'></span>
				<span class='corp_name'>${v.corp_name} </span>
				<span class='manager_name'>${v.manager_name }</span>
				<span class='manager_phone'>${v.manager_phone }</span>
				<span class='manager_email'>${v.manager_email }</span>
				<input type="hidden" value="${v.id }">
				<input type="hidden" value="${v.corp_license}">
			</li>
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
		              style="background-color: #2d3644;">${i }</button>
		   </div>
		 </c:forEach>
		 <c:if test="${cpVo.endPage lt cpVo.totPage }">
		   <div class="btn-group" role="group" aria-label="Third group">
		      <button type="button" class="btn btn-outline-light btn-sm" onclick='movePage(${cpVo.endPage + 1})'
		              style="background-color: #2d3644;">></button>
		   </div>
		 </c:if>
		</div>
	  </div>
</body>
</html>