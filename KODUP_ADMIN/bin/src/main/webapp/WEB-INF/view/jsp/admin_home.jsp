<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/admin_home.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="js/admin_home.js"></script>
<title>admin_home</title>
</head>
<body>

<!-- 회사 공지 -->
<div style="max-width:1300px; margin-bottom:30px;">
	<div class="baik_main_center" style="border: none;">
		   <div id="carouselExampleDark" class="carousel carousel-dark slide" style="width:1300px; height:500px; ">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
		  </div>
		  <div class="carousel-inner" style="width:1279px; height:500px;">
		    <div class="carousel-item active" data-bs-interval="10000">
		      <img src="images/공지1.jpg" class="d-block w-100" alt="..."style="width:1300px; height:500px;">
		      <div class="carousel-caption d-none d-md-block">
		      </div>
		    </div>
		    <div class="carousel-item" data-bs-interval="2000">
		      <img src="images/공지2.jpg" class="d-block w-100" alt="..." style="width:1300px; height:500px;">
		      <div class="carousel-caption d-none d-md-block">
		      </div>
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
	</div>
	
	
	<!-- Todo list -->
	<div class="row" style="margin-left:7px; margin-top:20px; text-align: center;">
	  <div class="col-md-3">
	    <div class="card">
	      <img src="images/멘토1.png" class="card-img-top" alt="..." style="height:150px;">
	      <div class="card-body">
	        <h5 class="card-title">멘토 신청</h5>
	        <hr class="my-2">
	        <p class="card-text">
	          <ul style="min-height:92px;">
	             <li>lgtwins0501 신청!</li>
	             <li>dustn384    신청!</li>
	          </ul>
	        </p>
	      </div>
	    </div>
	  </div>
	  <div class="col-md-3">
	    <div class="card">
	      <img src="images/은행 창구.png" class="card-img-top" alt="..." style="height:150px;">
	      <div class="card-body">
	        <h5 class="card-title">환전 신청</h5>
	        <hr class="my-2">
	        <p class="card-text">
	          <ul style="min-height:92px;">
	             <li>lgtwins0501 신청!</li>
	             <li>dustn384    신청!</li>
	          </ul>
	        </p>
	      </div>
	    </div>
	  </div>
	  <div class="col-md-3">
	    <div class="card">
	      <img src="images/회사.jpg" class="card-img-top" alt="..." style="height:150px;">
	      <div class="card-body">
	        <h5 class="card-title">기업 신청</h5>
	        <hr class="my-2">
	        <p class="card-text">
	          <ul style="min-height:92px;">
	             <li>lgtwins0501 신청!</li>
	             <li>dustn384    신청!</li>
	          </ul>
	        </p>
	      </div>
	    </div>
	  </div>
	  <div class="col-md-3">
	    <div class="card">
	      <img src="images/신고.jpg" class="card-img-top" alt="..." style="height:150px;">
	      <div class="card-body">
	        <h5 class="card-title">대량 신고 감지</h5>
	        <hr class="my-2">
	        <p class="card-text">
	          <ul style="min-height:92px;">
	             <li>추후 오픈 예정입니다...</li>
	          </ul>
	        </p>
	      </div>
	    </div>
	  </div>
	</div>
</div>
</body>
</html>