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
<div class="profile_wrapper">
	<div class="profile_main">
		<img src="images/basic_profile.jpg" class="profileImg">
		<div class="setting_iconDiv">
			<img src="images/setting_icon.png" class="setting_icon">
		</div>
		
		<div class="profile_nicknameDiv">
			<span class="profile_nickname">힐따기요</span>
			<span class="profile_grade">멘토</span>
		</div>
		<div class="profile_phrases">만나서 반갑습니당 주 활동시간 : 월~금 12:00~19:00</div>
		<div class="profile_nav">
			<nav class="profile_atags">
				<div id="horizontal-underline"></div>
	        	<a href="#" id="btnMyarticle" class='atag' onclick="return false">내 게시글</a>
	        	<a href="#" id="btnMyrepl" class='atag' onclick="return false">내 댓글</a>   
	        	<a href="#" class='atag' onclick="return false">인스타그램</a>
			</nav>
		</div>
	</div>
	
	<div id="profile_innerSection">
	</div>
	
</div>
</body>
</html>