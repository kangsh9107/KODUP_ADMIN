<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='css/admin_total_mansearch_board_view.css'>
<script src='js/admin_total_board.js'></script>
<meta charset="UTF-8">
<title>mansearch_view.jsp</title>
<style>
li {
	list-style: none;
}
</style>
</head>
<body>
 <div style="padding-left:40px;">
	    <h3 style="font-weight: bold;">구인 게시물</h3>
		   <hr><br>
 </div>
 
<form class="frm">
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
<div style="margin-left:40px; width:1370px; background-color: #eee;">
 <span style="display:inline-block; margin:10px;">
	<img src="/images/${atVo.corp_logo }" class="view_corp_logo">
	<label>${atVo.corp_name }</label>
</span><br/>
<div id="task" style="margin-left:40px;">${atVo2.main_task }</div>
<div id="job_index" style="margin-left:5px;">${atVo2.sub_task }</div>
<div class="container text-center">
	<div class="row justify-content-md-center">
		<div class="col mansearch_view_subject">
			<span style="font-size:1.8rem;">
				<label name="subject" style="width:400px;">${atVo.subject}</label>
			</span><br/>
			<span class="deadline">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2" viewBox="0 0 16 16">
		  			<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
		  			<path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
				</svg>
				${atVo2.deadline }
			</span>
		</div>
	</div>
</div>
<div class="container text-left"style="margin-top:90px;">
	<div class="row">
		<div class="col-sm datepaylocation_area">
			<dl>
				<dt>근무시작일</dt>
				<dd>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar2" viewBox="0 0 16 16">
		  				<path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z"/>
		  				<path d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4z"/>
					</svg>${atVo2.work_start }
				</dd>
	      	</dl>	
    	</div>
    	<div class="col-sm datepaylocation_area">
			<dl>
				<dt>급여</dt>
				<dd>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-database" viewBox="0 0 16 16">
  						<path d="M4.318 2.687C5.234 2.271 6.536 2 8 2s2.766.27 3.682.687C12.644 3.125 13 3.627 13 4c0 .374-.356.875-1.318 1.313C10.766 5.729 9.464 6 8 6s-2.766-.27-3.682-.687C3.356 4.875 3 4.373 3 4c0-.374.356-.875 1.318-1.313ZM13 5.698V7c0 .374-.356.875-1.318 1.313C10.766 8.729 9.464 9 8 9s-2.766-.27-3.682-.687C3.356 7.875 3 7.373 3 7V5.698c.271.202.58.378.904.525C4.978 6.711 6.427 7 8 7s3.022-.289 4.096-.777A4.92 4.92 0 0 0 13 5.698ZM14 4c0-1.007-.875-1.755-1.904-2.223C11.022 1.289 9.573 1 8 1s-3.022.289-4.096.777C2.875 2.245 2 2.993 2 4v9c0 1.007.875 1.755 1.904 2.223C4.978 15.71 6.427 16 8 16s3.022-.289 4.096-.777C13.125 14.755 14 14.007 14 13V4Zm-1 4.698V10c0 .374-.356.875-1.318 1.313C10.766 11.729 9.464 12 8 12s-2.766-.27-3.682-.687C3.356 10.875 3 10.373 3 10V8.698c.271.202.58.378.904.525C4.978 9.71 6.427 10 8 10s3.022-.289 4.096-.777A4.92 4.92 0 0 0 13 8.698Zm0 3V13c0 .374-.356.875-1.318 1.313C10.766 14.729 9.464 15 8 15s-2.766-.27-3.682-.687C3.356 13.875 3 13.373 3 13v-1.302c.271.202.58.378.904.525C4.978 12.71 6.427 13 8 13s3.022-.289 4.096-.777c.324-.147.633-.323.904-.525Z"/>
					</svg>${atVo2.pay }만원
				</dd>
	      	</dl>
    	</div>	
    	<div class="col-sm datepaylocation_area">
			<dl>
				<dt>근무지역</dt>
				<dd>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
  						<path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
  						<path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
					</svg>${atVo2.corp_location}
				</dd>
	      	</dl>
    	</div>
  </div>
</div>
<div class="container text-right mansearch_view_element">
  	<div class="row">
    	<div class="col-sm element_left">
      		<div class='element_left_title'>
      			포지션
      		</div>
      		<div class='element_left_doc'>
      			${atVo2.position }
      		</div>      		
    	</div>
    	<div class="col-sm element_right">
      		<div class='element_right_title'>
      			계약형태
      		</div>
      		<div class='element_right_doc'>
      			${atVo2.job_type }
      		</div>      		
    	</div>
	</div>
</div>
<div class="container text-right mansearch_view_element">
  	<div class="row">
    	<div class="col-sm element_left">
      		<div class='element_left_title'>
      			필요경력
      		</div>
      		<div class='element_left_doc'>
      			${atVo2.required_career }
      		</div>
    	</div>
    	<div class="col-sm element_right">
      		<div class='element_right_title'>
      			학력사항
      		</div>
      		<div class='element_right_doc'>
      			${atVo2.education_level }
      		</div>
    	</div>
	</div>
</div>
<div class="container text-right mansearch_view_element">
  	<div class="row">
    	<div class="col-sm element_left">
      		<div class='element_left_title'>
      			근무방식
      		</div>
			<div class='element_left_doc'>
      			${atVo2.work_type }
      		</div>      		
    	</div>
    	<div class="col-sm element_right">
      		<div class='element_right_title'>
      			급여지급일
      		</div>
      		<div class='element_right_doc'>
      			${atVo2.pay_date }
      		</div>      		
    	</div>
	</div>
</div>
<div class="container text-right mansearch_view_element">
  	<div class="row">
    	<div class="col-sm element_left">
      		<div class='element_left_title'>
      			필수스킬
      		</div>
			<div class='element_left_doc'>
      			${atVo2.required_skill }
      		</div>      		
    	</div>
    	<div class="col-sm element_right" style="border:none;">
      		<div class='element_right_title'>
      		
      		</div>
      		<div class='element_right_doc'>
      		
      		</div>      		
    	</div>
	</div>
</div>
<br/>
<div class="mansearch_view_doc">

<pre>
  ${atVo.doc }
</pre>
</div>
<div class="container text-center mansearch_view_manager">
	<div class="row" style="vertical-align:middle;">
    	<div class="col-md-2 col-sm-12">담당자</div>
    	<div class="col-md-2 col-sm-12">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  				<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
			</svg> ${atVo.manager_name }
		</div>
    	<div class="col-md-4 col-sm-12">
    		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
  				<path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
			</svg> ${atVo.manager_phone }
		</div>
	   <div class="col-md-4 col-sm-12">
	   		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
	  			<path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
			</svg> ${atVo.manager_email }
	   </div>
	</div>
</div>

<br/><br/>
<h5 style="margin-left: 20px; font-weight: bold;">프리미엄 리뷰</h5>

<div class="container">
    <c:forEach var='v' items="${list }" varStatus='status'>
	<div class="row">
		<div class="col premium_review_wrap" >
			<div class="premium_review_writer">
				<span>
					<img id="premium_review_writer_icon" src="images/default.png"> 
				</span>
				<span>|</span>
				<span>
					<label>a001</label>
				</span>
				<span>|</span>
				<span>
					<label>2023-01-09</label>
				</span>
			</div>
			<div class="premium_review_doc_wrap">
				<div class="premium_review_doc">
				${v.review }
			    </div>
				
			</div>
		</div>	
      </c:forEach>
	</div>
</div>
<br>
<!-- 버튼 -->
 </div>
	<div class="row g-2" style="padding-left:300px; margin-top:20px; width:1370px;">
		   <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btnBackBoardList btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">목록</button>
		    </div>
		    <div class="d-grid gap-2 col-2 text-white">
		      <button class=" w-100 btn btn-md btnBackBoardList text-white" type="button" _msthash="1634243" _msttexthash="35733126" 
		              onclick="mansearch_board_modify(${pVo.sno})"style="direction: ltr; background-color:#2d3644">수정</button>
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