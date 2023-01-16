/**
 * admin_member_list_update
 */
 
$('.btnBackMemberList').on('click',function(){
	var frm = $('.frm')[0];
	var param = $(frm).serialize();
   $('#baik_admin_main').load('jsp/admin_member_list',param);
});

