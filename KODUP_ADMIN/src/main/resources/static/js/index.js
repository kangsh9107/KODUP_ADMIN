/**
 * 
 */

//index.js 공통작업파일은 수작업으로 합치도록함.
//커밋푸시할때 index.js는 빼고 푸시해서 메인브랜치로 머지.
$('.btnChartBoard').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_chart_board');
});


$('.btnChartMember').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_chart_member');
});

 
$('.btnChartPixel').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_chart_pixel');
});

$('.btnChartUse').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_chart_use');
});


$('.btnPixelExchange').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_exchange');
});


$('.btnExchangeRate').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_exchange_rate');
});



/*-------------------------------------------------------*/
 $('.btnAdminHome').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_home');
 });
 
 $('.btnTotalBoard').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_total_board');
 });

$('.btnMemberList').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_member_list');
 });

$('.btnMemberBan').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_ban');
 });
 
 $('.btnCorpCertification').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_corp_certification');
 });
 
  $('.btnMentoCertification').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_mento_certification');
 });


 $('#center').load('/login/main');
