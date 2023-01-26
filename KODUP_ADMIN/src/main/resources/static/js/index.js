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

 $('.btnTotalRepl').on('click',function(){
  console.log("연결");
    $('#baik_admin_main').load('jsp/admin_total_repl');
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
  
 $('.center').load('jsp/admin_home');
 
/*

	Notification.requestPermission();
	var permission = Notification.requestPermission();
	
	function getNotificationPermission() {
	        // 브라우저 지원 여부 체크
	        if (!("Notification" in window)) {
	            alert("데스크톱 알림을 지원하지 않는 브라우저입니다.");
	        }
	        // 데스크탑 알림 권한 요청
	        Notification.requestPermission(function (result) {
	            // 권한 거절
	            if(result == 'denied') {
	                Notification.requestPermission();
	                alert('알림을 차단하셨습니다.\n브라우저의 사이트 설정에서 변경하실 수 있습니다.');
	                return false;
	            }
	            else if (result == 'granted'){
	                alert('알림을 허용하셨습니다.');
	            }
	        });
	    new Notification("멘토 인증 신청이 요청되었습니다.", 
	                 {body:'lgtwins0501 님께서 멘토 인증 신청을 하였습니다.'});
	    };
	
*/



Notification.requestPermission();
var permission = Notification.requestPermission();

function getNotificationPermission() {
	 // 브라우저 지원 여부 체크
	 if (!("Notification" in window)) {
	  alert("데스크톱 알림을 지원하지 않는 브라우저입니다.");
	 }
	// 데스크탑 알림 권한 요청
	Notification.requestPermission(function (result) {
     // 권한 거절
	 if(result == 'denied') {
	   Notification.requestPermission();
	   alert('알림을 차단하셨습니다.\n브라우저의 사이트 설정에서 변경하실 수 있습니다.');
		  return false;
	 }else if (result == 'granted'){
		 alert('알림을 허용하셨습니다.');
	  }
     });
		   
};    
            
var past_pixel_id = "";
var past_mento_id = "";
var past_corp_id  = "";

(setInterval(function() {
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_check_pixel',
		dataType: 'html',
		success: function(data) {	   
		if(past_pixel_id != data){
		   past_pixel_id = data;		   
		   notify= function() {
            if (Notification.permission !== 'granted') {
                alert('notification is disabled');
            }
            else {
                var notification = new Notification('Notification title', {
                    icon: 'images/어드민 로고.png',
                    body: data + '님이 환전 신청을 하셨습니다.',
                });
 
             }
            }
            notify();
	
		}else{
		    console.log("다시실행...");		
		}
	  }
	});
	

	$.ajax({
		type: 'POST',
		url: 'jsp/admin_check_mento',
		dataType: 'html',
		success: function(data) {		 
		if(past_mento_id != data){
		   past_mento_id = data;
		   notify= function() {
            if (Notification.permission !== 'granted') {
                alert('notification is disabled');
            }
            else {
                var notification = new Notification('Notification title', {
                    icon: 'images/어드민 로고.png',
                    body: data + '님이 멘토 신청을 하셨습니다.',
                });
 
             }
            }
            notify();
	
		}else{
		   console.log("다시실행...");	
		}
	  }
	});
	
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_check_corp',
		dataType: 'html',
		success: function(data) {
		if(past_corp_id != data){
		   past_corp_id = data;		   
		   notify= function() {
            if (Notification.permission !== 'granted') {
                alert('notification is disabled');
            }
            else {
                var notification = new Notification('Notification title', {
                    icon: 'images/어드민 로고.png',
                    body: data + '님이 기업 신청을 하셨습니다.',
                });
 
             }
            }
            notify();
	
		}else{
		    console.log("다시실행...");	
		}
	  }
	});
	
}, 3000))();