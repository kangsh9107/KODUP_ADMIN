/**
 * admin_member_list_update
 */
 
$('.btnBackMemberList').on('click',function(){
	var frm = $('.frm')[0];
	var param = $(frm).serialize();
   $('#baik_admin_main').load('jsp/admin_member_list',param);
});

$('.btnMemberModify').on('click',function(){
	var frm = $('.frm')[0];
	var param = $(frm).serialize();
   $('#baik_admin_main').load('jsp/admin_member_list',param);
});

member_delete = function(id) {
	var yn = confirm('회원을 강제 탈퇴 처리하시겠습니까? 탈퇴된 회원의 정보는 삭제되며 복구 할 수 없습니다.');
	if( !yn ) return;
	console.log(id);
	var frm = $('.frm')[0];
	
	if(frm.gender.value == '남성')  frm.gender.value = 'm';
	if(frm.gender.value == '여성')  frm.gender.value = 'f';
	
	if(frm.account_type.value == "일반 회원")   frm.account_type.value= 0;
    if(frm.account_type.value == "카카오 회원")  frm.account_type.value= 1;
    if(frm.account_type.value == "네이버 회원")  frm.account_type.value= 2;
    
    if(frm.ban_status.value == "활동 중")  frm.ban_status.value= 0;
	if(frm.ban_status.value == "정지 중")  frm.ban_status.value= 1;
	if(frm.ban_status.value == "탈퇴")  frm.ban_status.value= 2;
	
	if(frm.grade.value == "일반 회원")   frm.grade.value= 0;
	if(frm.grade.value == "퍼스널 회원")  frm.grade.value= 1;
	if(frm.grade.value == "플러스 회원")  frm.grade.value= 2;
	if(frm.grade.value == "파트너 회원")  frm.grade.value= 3;
	
	if(frm.email_status.value == "비인증")  frm.email_status.value = 0;
	if(frm.email_status.value == "인증 신청")  frm.email_status.value = 1;
	if(frm.email_status.value == "인증 완료")  frm.email_status.value = 2;
	
	var param = $(frm).serialize();
	console.log(param);
	$('#baik_admin_main').load('jsp/admin_member_delete', param);
}