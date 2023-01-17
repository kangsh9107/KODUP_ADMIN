/**
 * 
 */
 $('.btnSearch').on('click', function() {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = 1;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_repl', param);
});

 movePage = function(nowPage) {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_repl', param);
}