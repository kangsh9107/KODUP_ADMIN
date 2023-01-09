/**
 * 
 */
 
 /* admin_total_board.jsp*/
 
 function admin_qna_view(){
	  $('#baik_admin_main').load('jsp/admin_total_qna_board_view');
 }
 
  function admin_freetalking_view(){
	  $('#baik_admin_main').load('jsp/admin_total_freetalking_board_view');
 }
 
  function admin_infoshare_view(){
	  $('#baik_admin_main').load('jsp/admin_total_infoshare_board_view');
 }
 
  function admin_mansearch_view(){
	  $('#baik_admin_main').load('jsp/admin_total_mansearch_board_view');
 }
 
  function admin_jobsearch_view(){
	  $('#baik_admin_main').load('jsp/admin_total_jobsearch_board_view');
 }
 
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


 /*목록 버튼 누를시 다시 리스트로 */
 
 $('.btnBackBoardList').on('click',function(){
   $('#baik_admin_main').load('jsp/admin_total_board');
});