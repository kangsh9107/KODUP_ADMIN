<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_member_list_update.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_member_list_update.js"></script>
<title>admin_member_list_update</title>
</head>
<body>
<script>
var frm = $('.frm')[0];

if(frm.gender.value == 'm')   frm.gender.value= "남성";
if(frm.gender.value == 'f')   frm.gender.value= "여성";



if(frm.account_type.value == 0)  frm.account_type.value="일반 회원";
if(frm.account_type.value == 1)  frm.account_type.value="카카오 회원";
if(frm.account_type.value == 2)  frm.account_type.value="네이버 회원";

if(frm.ban_status.value == 0)  frm.ban_status.value="활동 중"
if(frm.ban_status.value == 1)  frm.ban_status.value="정지 중"
if(frm.ban_status.value == 2)  frm.ban_status.value="탈퇴"

if(frm.grade.value == 0)  frm.grade.value="일반 회원";
if(frm.grade.value == 1)  frm.grade.value="퍼스널 회원";
if(frm.grade.value == 2)  frm.grade.value="플러스 회원";
if(frm.grade.value == 3)  frm.grade.value="파트너 회원";

if(frm.email_status.value == 0)  frm.email_status.value = "비인증";
if(frm.email_status.value == 1)  frm.email_status.value = "인증 신청";
if(frm.email_status.value == 2)  frm.email_status.value = "인증 완료";


</script>
<!-- 회원 자체 프로필 -->
<form class="frm">
<div class="profile_wrapper">
	<div class="profile_main" style="width:1300px; margin-left:12px;">
		<img src="images/${amVo.profile_img}" class="profileImg">
		<div class="profile_nicknameDiv">
			<span class="profile_nickname">${amVo.nickname }</span>
			<span class="profile_grade" style="font-size:15px;">
			   <c:choose>
				<c:when test="${amVo.grade eq '0'}"><label style="color:#8f8e8a">일반</label></c:when>
				<c:when test="${amVo.grade eq '1'}"><label style="color:#ffd700">퍼스널</label></c:when>
				<c:when test="${amVo.grade eq '2'}"><label style="color:#587fe0">플러스</label></c:when>
				<c:when test="${amVo.grade eq '3'}"><label style="color:#b65fc2">파트너</label></c:when>
               </c:choose>
			</span>
		</div>
		<div class="profile_phrases">${amVo.introduce}</div>
		
	</div>
	<br>
	
	<!-- 회원 정보 -->
	<div class="container" id="member_info" style="margin-left:20px;">
	  <div class="row g-2">
	    
	    <div class="col-7" style="margin-left: -17px;">
	       <div class="row g-2 info_col">
	          <h5 style="margin-top: -30px;">회원 정보</h5>
			   <div class="col-2">
				  아이디
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly type="text" value="${amVo.id }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			  
			   <div class="col-2">
				  비밀번호
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.pwd }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  이메일
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly type="text" value="${amVo.email }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			  
			   <div class="col-2">
				  닉네임
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.nickname }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  성별
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly name="gender" type="text" value="${amVo.gender }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			  
			   <div class="col-2">
				  나이(만)
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly type="text" value="${amVo.age }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  계정유형
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly name="account_type" readOnly value="${amVo.account_type }" type="text" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			 
			   <div class="col-2">
				  활동 상태
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly name="ban_status" type="text" value="${amVo.ban_status }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  보유 픽셀
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.pixel }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			   
			   <div class="col-2">
				  회원등급
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly name="grade" type="text" value="${amVo.grade }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  이메일인증
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly name="email_status" type="text" value="${amVo.email_status }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			   
			   <div class="col-2">
				  정지 회수
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm"  type="text" value="${amVo.ban_number }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		     </div>
		   </div>
		   <div class="col-5 member_activity" style="padding-left:40px; margin-top:-20px;">
		    <div class="recent_doc">
				 <h5>최신 게시글</h5>
				 <ul>
				 <c:forEach var='v' items="${doc_list }" varStatus='status'>
				   <li>
		             <span class="subject">${v.subject }</span>
		             <span class="nal">${v.nal }</span>
				   </li>
				 </c:forEach>
				  
				 </ul>
			 </div>
			 <br>	
			 <div class="recent_repl">
			    <h5>최신 댓글</h5>
				 <ul>
				  <c:forEach var='v' items="${repl_list }" varStatus='status'>
				   <li>
		             <span class="repl_doc">${v.repl_doc }</span>
		             <span class="repl_nal">${v.repl_nal }</span>
				   </li>
				  </c:forEach>
				 </ul>
			 </div>
		   </div>
		</div>
		   <br><br>
			   <div class="row g-2" style="padding-left:385px;">
			      <div class="col-5"></div>
			      <div class="d-grid gap-2 col-2 text-white">
		            <button class=" w-100 btn btnBackMemberList btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">목록</button>
		          </div>
		          <div class="d-grid gap-2 col-2 text-white">
		            <button class=" w-100 btn btnMemberModify btn-md text-white" type="button" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">수정</button>
		          </div>
		          <div class="d-grid gap-2 col-2 text-white">
		            <button class=" w-100 btn btn-md text-white btn-danger" type="button" _
		                    onclick="member_delete(${v.id})" msthash="1634243" _msttexthash="35733126" style="direction: ltr;">강제 탈퇴</button>
		          </div>
		       </div>
	    </div>
	    <input type='hidden' name='findStr' value='${mpVo.findStr }'/>
		<input type='hidden' name='nowPage' value='${mpVo.nowPage }'/>
	    <input type='hidden' name='id' value='${mpVo.id }'/>
</div>
</form>
</body>
</html>