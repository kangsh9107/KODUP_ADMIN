<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_total_board.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_total_board.js"></script>
<title>qna/qna_view.jsp</title>
</head>
<body>

<div style="padding-left:40px;">
   <h3 style="font-weight: bold;">QnA 게시물</h3>
	   <hr><br>
</div>

<form class="frm" id="qna_view" style="width:1000px;">
   <c:choose>
	  <c:when test="${atVo.board_delete eq 0}"></c:when>
	  <c:when test="${atVo.board_delete eq 1}">
	       <label style="font-size:30px; font-weight:bold; margin-left:40px; color: red;">
	          !작성자가 삭제한 게시물 입니다.
	       </label>
	   </c:when>
	   <c:when test="${atVo.board_delete eq 2}">
	       <label style="font-size:30px; font-weight:bold; margin-left:40px; color: red;">
	          !삭제 처리 된 게시물 입니다.
	       </label>
	   </c:when>
   </c:choose>
  <div class="board_view">
	   <!-- boardtype + / + horsehead -->
	   <div id="qna_view_horsehead" style="padding-top:20px; width:1000px;">
	      <label>말머리 :</label>
	      <label>${atVo.horsehead }</label>
		  <hr>
	   </div>
	   
	   <!-- 글제목 -->
	   <div id="qna_view_subject">
	      <div class="col" style="height: 45px; text-align:left;">
	         <div style="font-size:20px; ">
		         <label style="font-weight: bold;">제목 :</label>
		         <label name="subject" style="width:600px;">${atVo.subject}</label>
		   
	         </div>
	      </div>
	   </div>
<!-- 게시글 정보 -->	  
	   <div>
	   <div id="qna_view_profile" style="margin-top:-5px; margin-left:10px; font-size:13px;">
	      <span id="qna_view_profile_profileimage" >
	         <label>글쓴이 :</label>
	         <img id="qna_view_profile_profileimage_file" src="images/${atVo.profile_img}" style="width:20px; height:20px;">
	      </span>
	      <span id="index_profile">
	         <span>${atVo.nickname }</span>
	      </span>
	   
	   <!-- 조회수,작성시간 css왼쪽 기준으로 오른쪽에 붙게 빼자 -->
	       <label style="margin-left:5px;">해쉬태그 :</label>
		   <span id="qna_view_hashtag">
		      <span>${atVo.hashtag}</span> 
		   </span>
		   <span id="qna_view_info">
		      <label style="margin-left:5px;">올린 시간 :</label>
		      <span>${atVo.nal }</span>
		      <label style="margin-left:5px;">조회수 :</label>
		      <span>${atVo.viewcount}</span>
		      <label style="margin-left:5px;">추천수 :</label>
		      <span>${atVo.thumbup }</span>
		      
		   </span>
	   </div>
		   <br>
		   
		    <h5 style="font-weight: bold;">내용</h5>
		   <div id="qna_view_doc" style="width:1000px;">  
		      ${atVo.doc}
		   </div>
		   
	   </div>
       <br>
       <div style="font-size:17px; font-weight: bold;">
	      <label>채택 픽셀 :</label>
          <span>
            <fmt:formatNumber value='${atVo.qna_pixel_reward }' pattern='#,###'>
		    </fmt:formatNumber>
		    픽셀
          </span>
       </div>
	   <br>
	   <!-- 댓글 -->
	   <h5 style="font-weight: bold;">댓글 목록</h5>
	   
	   <div id="board_view_repl" class="item" style="margin-bottom:20px;">
		      <!-- 채택된 댓글 -->
		      <div class="row g-3" id="board_view_repl_profile" style="margin-left:5px; ">
		         <span id="board_view_repl_profile_profileimage">
		            <img id="board_view_repl_profile_profileimage_file" src="images/${atVo2.profile_img }" style="width:20px; height:20px;">
		         </span>
		         <span id="board_view_profile_nickname" style="color: #686a6d; width:800px;">
		            <span style="width:10px;">|</span>
		            <span>${atVo2.nickname }</span>
		            <span style="width:10px;">|</span>
		            <span style="width:10px;">(채택된 댓글)</span>
		         </span>
		         <span style="width:180px; color: #686a6d;">
		            <span id="" style=" padding-right:10px;">${atVo2.repl_nal }</span>
		         </span>
		         <span id="board_view_repl_doc" style="width:980px;">
		              ${atVo2.repl_doc}
		         </span>
		     </div>
	   </div>
	   <c:forEach var='v' items="${repl_list }" varStatus='status'>
	      <c:choose>
	        <c:when test="${v.deep eq 0}">
	        <div id="board_view_repl" class="item" style="margin-bottom:20px;">
		      <!-- 작성자프로필사진+닉네임 -->
		      <div class="row g-3" id="board_view_repl_profile" style="margin-left:5px;">
		         <span id="board_view_repl_profile_profileimage">
		            <img id="board_view_repl_profile_profileimage_file" src="images/${v.profile_img }" style="width:20px; height:20px;">
		         </span>
		         <span id="board_view_profile_nickname" style="color: #686a6d; width:800px;">
		            <span style="width:10px;">|</span>
		            <span>${v.nickname }</span>
		            <span style="width:10px;">|</span>
		         </span>
		         <span style="width:180px; color: #686a6d;">
		            <span id="" style="float:right; padding-right:10px;">${v.repl_nal }</span>
		         </span>
		         <span id="board_view_repl_doc" style="width:980px;">
		              ${v.repl_doc}
		         </span>
		       </div>
		    </div>
		   </c:when>
	       <c:when test="${v.deep eq 1}">
		   <div id="board_view_repl" class="item" style="margin-bottom:20px; margin-left:50px;">
		      <!-- 작성자프로필사진+닉네임 -->
		      <div class="row g-3" id="board_view_repl_profile" style="margin-left:5px;">
		         <span id="board_view_repl_profile_profileimage">
		            <img id="board_view_repl_profile_profileimage_file" src="images/${v.profile_img }" style="width:20px; height:20px;">
		         </span>
		         <span id="board_view_profile_nickname" style="color: #686a6d; width:750px;">
		            <span style="width:10px;">|</span>
		            <span>${v.nickname }</span>
		            <span style="width:10px;">|</span>
		         </span>
		         <span style="width:180px; color: #686a6d;">
		            <span id="" style=" padding-right:10px;">${v.repl_nal }</span>
		         </span>
		         <span id="board_view_repl_doc" style="width:930px;">
		              ${v.repl_doc}
		         </span>
		       </div>
		   </div>
		  </c:when>
          </c:choose>
	   </c:forEach>
   </div>
<!-- 버튼 -->
	<div class="row g-2" style="padding-left:300px; margin-top:10px; width:1000px;">
	        <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btnBackBoardList btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" 
		              style="direction: ltr; background-color:#2d3644">목록</button>
		    </div>
		    <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" 
		              onclick="qna_board_modify(${pVo.sno})" style="direction: ltr; background-color:#2d3644">수정</button>
		    </div>
		    <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btn-md btn-success text-white" type="button" _msthash="1634243" _msttexthash="35733126" 
		              onclick="board_restore(${pVo.sno})" style="direction: ltr;">복구</button>
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