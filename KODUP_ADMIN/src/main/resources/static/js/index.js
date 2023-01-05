/**
 * 
 */

//index.js 공통작업파일은 수작업으로 합치도록함.
//커밋푸시할때 index.js는 빼고 푸시해서 메인브랜치로 머지.
$('.btnChartBoard').on('click',function(){
	console.log("index.js admin_chart_board.jsp 연결성공");
	$('#baik_admin_main').load('jsp/admin_chart_board');
});


$('.btnChartMember').on('click',function(){
	console.log("index.js admin_chart_member.jsp 연결성공");
	$('#baik_admin_main').load('jsp/admin_chart_member');
});
 
 
$('.btnChartUse').on('click',function(){
	console.log("index.js admin_chart_pixel.jsp 연결성공");
	$('#baik_admin_main').load('jsp/admin_chart_pixel');
});


$('.btnPixelExchange').on('click',function(){
	console.log("jsp/admin_exchange.jsp 연결성공");
	$('#baik_admin_main').load('jsp/admin_exchange');
});


$('.btnExchangeRate').on('click',function(){
	console.log("jsp/admin_exchange_rate.jsp 연결성공");
	$('#baik_admin_main').load('jsp/admin_exchange_rate');
});




