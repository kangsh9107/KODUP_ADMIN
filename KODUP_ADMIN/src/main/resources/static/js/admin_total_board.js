/**
 * 
 */
 
 /* admin_total_board.jsp*/
 
 $('.btnSearch').on('click', function() {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = 1;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_board', param);
});

movePage = function(nowPage) {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_board', param);
}

view = function(sno, boardtype) {
    var frm = $('.frm_search')[0];
   
    console.log(sno);
    console.log(boardtype);
    
    frm.sno.value = sno; 
    frm.boardtype.value = boardtype;
    console.log(sno);
    console.log(boardtype)
    
    var str = 'jsp/admin_total_' + boardtype + '_board_view';
	var param = $(frm).serialize();
	$('#baik_admin_main').load(str,param);
};


 /*목록 버튼 누를시 다시 리스트로 */
$('.btnBackBoardList').on('click', function() {
	    $('#baik_admin_main').load('jsp/admin_home');
/*	var frm = $('.frm')[0];
	
	var param = $(frm).serialize();

	$('#baik_admin_main').load('jsp/admin_total_board', param);*/
});