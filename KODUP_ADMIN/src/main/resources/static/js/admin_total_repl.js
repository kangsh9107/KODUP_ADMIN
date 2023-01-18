/**
 * 
 */
$('.btnSearch').on('click', function() {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = 1;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_repl', param);
});

$(".findStr").on("keydown",function(key){
  if(key.keyCode==13) {

       $('.btnSearch').click();
     }
});

movePage = function(nowPage) {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_repl', param);
}

list_repl_delete = function(repl_sno){
	var yn = confirm('댓글을 삭제하시겠습니까?');
	if( !yn ) return;
	
	var frm = $('.frm_search')[0];
	frm.repl_sno.value = repl_sno;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_repl_delete', param);
}

list_repl_restore = function(repl_sno){
	var yn = confirm('댓글을 복구 하겠습니까?');
	if( !yn ) return;
	
	var frm = $('.frm_search')[0];
	frm.repl_sno.value = repl_sno;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_repl_restore', param);
}