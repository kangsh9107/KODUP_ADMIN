<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KODUP for admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link defer rel="stylesheet" href="css/index.css">

<script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script defer src='js/index.js'></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src='js/admin_chart_board.js'></script>
</head>
<body>
<!-- 상단 네비바 -->
<nav class="navbar bg-body-tertiary text-white" style="background-color:#2d3644 !important; min-width:1700px;">
  <div class="container-fluid text-white">
    <span class="navbar-brand mb-0 h1 text-white"><img src="/images/어드민 로고.png" style="width:40px; height:30px;">ADMIN KODUP</span>
  </div>
</nav>
 
<!-- 사이드바 -->
<!-- a태그 class에 data-bs-toggle="collapse"속성 추가하면 펼쳐지고 닫힘기능 추가 ul class 명에 show 추가하면 첫 페이지에 펼쳐져있음 -->
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark text-white">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                
                    <span class="fs-5 d-none d-sm-inline text-white">Menu</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li class="nav-item">
                        <a href="#" class="nav-link align-middle px-0 text-white btnAdminHome">
                            <ion-icon name="desktop-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                            <span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>
                     <li>
                     <a href="#" class="nav-link align-middle px-0 text-white btnTotalBoard">
                        <ion-icon name="documents-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                           <span class="ms-1 d-none d-sm-inline">
                             <label class="sidebar_list" style="cursor: pointer;">통합 게시물 관리</label>
                           </span>
                        </a>
                    </li>
                    <li>   
                        <a href="#" onclick="return false" style="cursor:default;" class="nav-link px-0 align-middle text-white">
                           <ion-icon name="person-circle-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                               <span class="ms-1 d-none d-sm-inline">회원</span> </a>
                        <ul class="collapse show nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0 text-white btnMemberList"> 
                                <span class="d-none d-sm-inline" style="margin-left:30px;">
                                   <label class="sidebar_list" style="cursor: pointer;">회원 리스트</label>
                                 </span></a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0 text-white btnMemberBan">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                    <label class="sidebar_list" style="cursor: pointer;">회원 정지 관리</label>
                                   </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onclick="return false" style="cursor:default;"  class="nav-link px-0 align-middle text-white">
                            <ion-icon name="checkmark-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                             <span class="ms-1 d-none d-sm-inline">인증</span></a>
                        <ul class="collapse show nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0 text-white btnCorpCertification">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                    <label class="sidebar_list" style="cursor: pointer;">기업 인증</label>
                                  </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0 text-white btnMentoCertification">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                     <label class="sidebar_list" style="cursor: pointer;">멘토 인증</label>
                                  </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" onclick="return false" style="cursor:default;"  class="nav-link px-0 align-middle text-white">
                           <ion-icon name="cash-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                             <span class="ms-1 d-none d-sm-inline">픽셀</span></a>
                            <ul class="collapse show nav flex-column ms-1" id="submenu3" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="#" class="nav-link px-0 text-white btnPixelExchange">
                                 <span class="d-none d-sm-inline" style="margin-left:30px;">
                                   <label class="sidebar_list" style="cursor: pointer;">환전 관리</label>
                                 </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0 text-white btnExchangeRate">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                    <label class="sidebar_list" style="cursor: pointer;">환전 비율</label>
                                  </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                     <li>
                        <a href="#" onclick="return false" style="cursor:default;"  class="nav-link px-0 align-middle text-white">
                            <ion-icon name="bar-chart-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                             <span class="ms-1 d-none d-sm-inline">통계</span> </a>
                            <ul class="collapse show nav flex-column ms-1" id="submenu4" data-bs-parent="#menu">
                            <li>
                                <a href="#" class="nav-link px-0 text-white btnChartMember">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                    <label class="sidebar_list" style="cursor: pointer;"c>회원 통계</label>
                                  </span>
                                </a>
                            </li>
                            <li class="w-100">
                                <a href="#" class="nav-link px-0 text-white btnChartBoard">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                    <label class="sidebar_list" style="cursor: pointer;">게시판 통계</label>
                                  </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0 text-white btnChartUse">
                                  <span class="d-none d-sm-inline" style="margin-left:30px;">
                                    <label class="sidebar_list" style="cursor: pointer;">이용 통계</label>
                                  </span>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="nav-link px-0 text-white btnChartPixel">
                                 <span class="d-none d-sm-inline" style="margin-left:30px;">
                                   <label class="sidebar_list" style="cursor: pointer;">픽셀 통계</label>
                                 </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                   
                </ul>
                <hr>
                <div class="dropdown pb-4">
                    <a href="#" class="d-flex align-items-center text-white text-decoration-none " id="logout"  aria-expanded="false">
                        <span class="d-none d-sm-inline mx-1">LOG OUT</span>
                    </a>
                  
                </div>
            </div>
        </div>
        
        <div class="col py-3 " id="baik_admin_main" style="width:100%">
            <div class="center"></div>
        </div>
    </div>
</div>

<!-- 하단 네비바 -->
<nav class="navbar bg-body-tertiary" style="background-color:#2d3644 !important; min-width:1700px;">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1"> </span>
  </div>
</nav>
</body>
</html>