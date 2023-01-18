/**
 * 
 */

 $('.btnSearch').on('click', function() {
	var frm = $('.frm_search2')[0];
	frm.nowPage.value = 1;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_member_list', param);
});

$(".findStr").on("keydown",function(key){
  if(key.keyCode==13) {
	
       $('.btnSearch').click();
     }
});

movePage = function(nowPage) {
	var frm = $('.frm_search2')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_member_list', param);
}

view = function(id) {
    var frm = $('.frm_search2')[0];
    
    console.log(id);
    
    frm.id.value = id;
    var param = $(frm).serialize();
    console.log(param);
    $('#baik_admin_main').load('jsp/admin_member_list_update',param);
};