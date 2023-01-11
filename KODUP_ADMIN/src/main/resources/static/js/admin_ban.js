/**
 * 
 */
 
$('.btnSearch').on('click', function() {
	var frm = $('.frm_search3')[0];
	frm.nowPage.value = 1;
	var param = $(frm).serialize();
	console.log(param)
	$('#baik_admin_main').load('jsp/admin_ban', param);
});

movePage = function(nowPage) {
	var frm = $('.frm_search3')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_ban', param);
}

make_ban = function(id) {
     var frm = $('.frm_search3')[0];
     frm.id.value = id;
     var param = $(frm).serialize();
     	console.log(param)
	 $('#baik_admin_main').load('jsp/admin_make_ban', param);
}


make_activity = function(id) {
     var frm = $('.frm_search3')[0];
     frm.id.value = id;
     var param = $(frm).serialize();
     	console.log(param)
	 $('#baik_admin_main').load('jsp/admin_make_activity', param);
}
