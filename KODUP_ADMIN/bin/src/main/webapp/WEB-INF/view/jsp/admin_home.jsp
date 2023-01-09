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
<div class="baik_main_center">
	   <div id="carouselExampleDark" class="carousel carousel-dark slide" style="width:1435px; height:500px;">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
	  </div>
	  <div class="carousel-inner" style="width:1435px; height:500px;">
	    <div class="carousel-item active" data-bs-interval="10000">
	      <img src="images/캐러샐1.png" class="d-block w-100" alt="..."style="width:1435px; height:500px;">
	      <div class="carousel-caption d-none d-md-block">
	      </div>
	    </div>
	    <div class="carousel-item" data-bs-interval="2000">
	      <img src="images/캐러샐2.png" class="d-block w-100" alt="..." style="width:1435px; height:500px;">
	      <div class="carousel-caption d-none d-md-block">
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="images/캐러샐3.png" class="d-block w-100" alt="..."style="width:1435px; height:500px;">
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

<hr class="my-4">
<!-- Todo list -->
<div class="row row-cols-1 row-cols-md-4 g-4" style="padding-left:20px;">
  <div class="col">
    <div class="card" style="width:262px;">
      <img src="images/멘토1.png" class="card-img-top" alt="..." style="width:260px; height:150px;">
      <div class="card-body">
        <h5 class="card-title">멘토 신청</h5>
        <hr class="my-2">
        <p class="card-text"></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card" style="width:262px;">
      <img src="images/은행 창구.png" class="card-img-top" alt="..." style="width:260px; height:150px;">
      <div class="card-body">
        <h5 class="card-title">환전 신청</h5>
        <hr class="my-2">
        <p class="card-text">
          <ul>
             <li>lgtwins0501 신청!</li>
             <li>dustn318    신청!</li>
          </ul>
        </p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card" style="width:262px;">
      <img src="images/회사.jpg" class="card-img-top" alt="..." style="width:260px; height:150px;">
      <div class="card-body">
        <h5 class="card-title">기업 신청</h5>
        <hr class="my-2">
        <p class="card-text"></p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card" style="width:262px;">
      <img src="images/회사.jpg" class="card-img-top" alt="..." style="width:260px; height:150px;">
      <div class="card-body">
        <h5 class="card-title">기업 신청</h5>
        <hr class="my-2">
        <p class="card-text"></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>