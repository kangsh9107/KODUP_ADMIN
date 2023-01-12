<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_total_freetalking_board_view.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_total_board.js"></script>
<title>freetalking/freetalking_view.jsp</title>
</head>
<style>
.freetalking_view {
min-height: 300px;
background: #eee;
width:1050px; 
padding-left:20px; 
margin-left:40px;
padding-bottom: 10px;
}

#freetalking_view_repl_profile{
margin-left:10px;
}
#freetalking_view_repl{
border:1px solid #c8c9ca;
width: 1000px;
}
#freetalking_view_repl_doc{
 margin-left:10px;
}
</style>
<body>

<div style="padding-left:40px;">
   <h3 style="font-weight: bold;">자유 게시물</h3>
	   <hr><br>
</div>

<form class="frm" id="freetalking_view" style="width:1000px;">
  <div class="freetalking_view">
	   <!-- boardtype + / + horsehead -->
	   <div id="freetalking_view_horsehead" style="padding-top:20px; width:1000px;">
	      <label style="font-weight: bold;">말머리 :</label>
	      <select>
		    <option value="skill">일상</option>
		    <option value="career">스포츠</option>
		    <option value="else">연예</option>
		  </select>
		  <hr>
	   </div>
	   
	   <!-- 글제목 -->
	   <div id="freetalking_view_subject">
	      <div class="col" style="height: 45px; text-align:left;">
	         <div style="font-size:20px; ">
		         <label style="font-weight: bold;">제목 :</label>
		         <label name="subject" style="width:400px;">${atVo.subject}</label>
		     </div>
	      </div>
	   </div>
<!-- 게시글 정보 -->	  
	   <div>
	   <div id="freetalking_view_profile" style="margin-top:-5px; margin-left:10px; font-size:13px;">
	      <span id="freetalking_view_profile_profileimage" >
	         <label>글쓴이 :</label>
	         <img id="freetalking_view_profile_profileimage_file" src="images/${atVo.profile_img}" style="width:20px; height:20px;">
	      </span>
	      <span id="index_profile">
	         <span>${atVo.nickname }</span>
	      </span>
	   
	   <!-- 조회수,작성시간 css왼쪽 기준으로 오른쪽에 붙게 빼자 -->
	       <label>해쉬태그 :</label>
		   <span id="freetalking_view_hashtag">
		     <span>${atVo.hashtag}</span> 
		   </span>
		   <span id="freetalking_view_info">
		      <label>올린 시간 :</label>
		      <span>${atVo.nal }</span>
		      <label>조회수 :</label>
		      <span>${atVo.viewcount} </span>
		      <label>추천수 :</label>
		      <span> </span>
		   </span>
	   </div>
		   <br>
		    <h5 style="font-weight: bold;">내용</h5>
		   <div id="freetalking_view_doc" style="width:1000px;">  
		      ${atVo.doc}  
		   </div>
	   </div>
       <br>
       
	  
	   <br>
	   <!-- 댓글 -->
	   <h5 style="font-weight: bold;">댓글 목록</h5>
	   <c:forEach var='v' items="${repl_list }" varStatus='status'>
		   <div id="freetalking_view_repl" class="item" style="margin-bottom:20px;">
		      <!-- 작성자프로필사진+닉네임 -->
		      <div id="freetalking_view_repl_profile">
		         <span id="freetalking_view_repl_profile_profileimage">
		            <img id="freetalking_view_repl_profile_profileimage_file" src="images/${v.profile_img }" style="width:20px; height:20px;">
		         </span>
		         <span id="freetalking_view_profile_nickname">
		            <span>${v.nickname }</span>
		         </span>
		         <span id="freetalking_view_repl_doc">${v.repl_doc }</span>
		         <span style="float:right; padding-right:10px;">${v.repl_nal }</span>
		       </div>
		   </div>
	   </c:forEach>
   </div>
<!-- 버튼 -->
	<div class="row g-2" style="padding-left:400px; margin-top:10px; width:1000px;">
	        <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btnBackBoardList btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">목록</button>
		    </div>
		    <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" 
		              onclick="freetalking_board_modify(${pVo.sno})" style="direction: ltr; background-color:#2d3644">수정</button>
		    </div>
		    <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btn-md text-white btn-danger" type="button" _msthash="1634243" _msttexthash="35733126" 
		              onclick="board_delete(${pVo.sno})" style="direction: ltr;">삭제</button>
		     </div>
	 </div>
	
	<input type='hidden' name='findStr' value='${pVo.findStr }'/>
	<input type='hidden' name='nowPage' value='${pVo.nowPage }'/>
    <input type='hidden' name='sno' value='${pVo.sno }'/>
    <input type='hidden' name='boardtype' value='${pVo.boardtype }'/>
</form>
</body>
</html>