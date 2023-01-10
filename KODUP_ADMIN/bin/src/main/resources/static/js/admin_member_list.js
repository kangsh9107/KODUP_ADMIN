/**
 * 
 */


 $('.btnSearch').on('click', function() {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = 1;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_member_list', param);
});

movePage = function(nowPage) {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_member_list', param);
}

view = function(id) {
    var frm = $('.frm_search')[0];
    frm.id.value = id;
    
    var param = $(frm).serialize();
    $('#baik_admin_main').load('jsp/admin_member_list_update',param);
}