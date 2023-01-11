<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- 회원 자체 프로필 -->
<form>
<div class="profile_wrapper">
	<div class="profile_main" style="width:1300px; margin-left:12px;">
		<img src="images/${amVo.profile_img}" class="profileImg">
		<div class="profile_nicknameDiv">
			<span class="profile_nickname">${amVo.nickname }</span>
			<span class="profile_grade">${amVo.grade }</span>
		</div>
		<div class="profile_phrases">만나서 반갑습니당 주 활동시간 : 월~금 12:00~19:00</div>
		
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
				  <input class="form-control form-control-sm" type="text" value="${amVo.id }" aria-label=".form-control-sm example" style="height:38px;">
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
				  <input class="form-control form-control-sm" type="text" value="${amVo.email }" aria-label=".form-control-sm example" style="height:38px;">
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
				  <input class="form-control form-control-sm" type="text" value="${amVo.gender }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			  
			   <div class="col-2">
				  나이
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.age }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  계정유형
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" readOnly value="${amVo.account_type }" type="text" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			 
			   <div class="col-2">
				  활동 상태
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.ban_status }" aria-label=".form-control-sm example" style="height:38px;">
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
				  <input class="form-control form-control-sm" type="text" value="${amVo.grade }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		   </div>
		   <br>
		   <div class="row g-2 info_col">
			   <div class="col-2">
				  이메일 인증
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.email_status }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
			   
			   <div class="col-2">
				  멘토 인증
		       </div>
			   <div class="col-4">
				  <input class="form-control form-control-sm" type="text" value="${amVo.mento_status }" aria-label=".form-control-sm example" style="height:38px;">
			   </div>
		     </div>
		   </div>
		   <div class="col-5 member_activity" style="padding-left:40px; margin-top:-20px;">
		    <div class="recent_doc">
				 <h5>최신 게시글</h5>
				 <ul>
				   <li>
		             <span class="subject">증말 살기 힘드네요</span>
		             <span class="nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="subject">올해는 lg트윈스가 우승할껍니다! 제가 장담함 진짜로 ㅋㅋ 아 진짜 라니까</span>
		             <span class="nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="subject">증말 살기 힘드네요</span>
		             <span class="nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="subject">증말 살기 힘드네요</span>
		             <span class="nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="subject">증말 살기 힘드네요</span>
		             <span class="nal">2023.01.02</span>
				   </li>
				 </ul>
			 </div>
			 <br>	
			 <div class="recent_repl">
			    <h5>최신 댓글</h5>
				 <ul>
				   <li>
		             <span class="repl_doc">모두 화이팅 합시다</span>
		             <span class="repl_nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="repl_doc">모두 화이팅 합시다 즐겁고 활기찬 신묘년이 되시길!하는일도 다 잘되고!</span>
		             <span class="repl_nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="repl_doc">모두 화이팅 합시다</span>
		             <span class="repl_nal">2023.01.02</span>
				   </li>
				   <li>		
		             <span class="repl_doc">모두 화이팅 합시다</span>
		             <span class="repl_nal">2023.01.02</span>
				   </li>
				   <li>
		             <span class="repl_doc">모두 화이팅 합시다</span>
		             <span class="repl_nal">2023.01.02</span>
				   </li>
				 </ul>
			 </div>
		   </div>
		</div>
		   <br><br>
			   <div class="row g-2" style="padding-left:385px;">
			      <div class="col-5"></div>
			      <div class="d-grid gap-2 col-2 text-white">
		            <button class=" w-100 btn btnBackMemberList btn-md text-white" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">목록</button>
		          </div>
		          <div class="d-grid gap-2 col-2 text-white">
		            <button class=" w-100 btn btn-md text-white" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr; background-color:#2d3644">수정</button>
		          </div>
		          <div class="d-grid gap-2 col-2 text-white">
		            <button class=" w-100 btn btn-md text-white btn-danger" type="submit" _msthash="1634243" _msttexthash="35733126" style="direction: ltr;">강제 탈퇴</button>
		          </div>
		       </div>
	    </div>
	   <input type='hidden' name='findStr' value='${mpVo.findStr }'/>
		<input type='hidden' name='nowPage' value='${mpVo.nowPage }'/>
	    <input type='hidden' name='id' value='${amVo.id }'/>
</div>
</form>
</body>
</html>