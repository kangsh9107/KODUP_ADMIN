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


select_search = function() {
	var selectValue = document.getElementById('selectBox').value;
	var frm = $('.frm_search')[0];
	frm.nowPage.value = 1;
	console.log(selectValue);
	
	if(selectValue=="All"){
	   var param = $(frm).serialize();
	   $('#baik_admin_main').load('jsp/admin_total_board', param);
	}else{
	   var param = $(frm).serialize();
	   $('#baik_admin_main').load("jsp/admin_total_board_find", param);	
	}
}

movePage = function(nowPage) {
	var frm = $('.frm_search')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_board', param);
}

view = function(sno, boardtype) {
    var str = 'jsp/admin_total_' + boardtype + '_board_view';
   
    var frm = $('.frm_search')[0];
    
    console.log(sno);
    console.log(boardtype);
    
    frm.sno.value = sno; 
    frm.boardtype.value = boardtype;
	var param = $(frm).serialize();
	console.log(param);
	$('#baik_admin_main').load(str,param);
};


 /*목록 버튼 누를시 다시 리스트로 */
$('.btnBackBoardList').on('click', function() {
	var frm = $('.frm')[0];
	var param = $(frm).serialize();

	$('#baik_admin_main').load('jsp/admin_total_board', param);
});


/*-------------------------modify--------------------------------------------*/
freetalking_board_modify = function(sno) {
	var frm = $('.frm')[0];
	var param = new FormData(frm);
	
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_freetalking_board_modify',
		contentType: false,
		processData: false,
		data: param,
		dataType: 'html',
		success: function(data) {
			$('#baik_admin_main').html(data);
		}
	});
}

infoshare_board_modify = function(sno) {
	var frm = $('.frm')[0];
	var param = new FormData(frm);
	
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_infoshare_board_modify',
		contentType: false,
		processData: false,
		data: param,
		dataType: 'html',
		success: function(data) {
			$('#baik_admin_main').html(data);
		}
	});
}

jobsearch_board_modify = function(sno) {
	var frm = $('.frm')[0];
	var param = new FormData(frm);
	
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_jobsearch_board_modify',
		contentType: false,
		processData: false,
		data: param,
		dataType: 'html',
		success: function(data) {
			$('#baik_admin_main').html(data);
		}
	});
}

mansearch_board_modify = function(sno) {
	var frm = $('.frm')[0];
	var param = new FormData(frm);
	
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_mansearch_board_modify',
		contentType: false,
		processData: false,
		data: param,
		dataType: 'html',
		success: function(data) {
			$('#baik_admin_main').html(data);
		}
	});
}

qna_board_modify = function(sno) {
	var frm = $('.frm')[0];
	var param = new FormData(frm);
	
	$.ajax({
		type: 'POST',
		url: 'jsp/admin_qna_board_modify',
		contentType: false,
		processData: false,
		data: param,
		dataType: 'html',
		success: function(data) {
			$('#baik_admin_main').html(data);
		}
	});
}

/*-----------------------------delete-------------------------------------*/
board_delete = function(sno) {
	var yn = confirm('게시글을 삭제하시겠습니까?');
	if( !yn ) return;
	
	var frm = $('.frm')[0];
	var param = $(frm).serialize();
	console.log(param);
	$('#baik_admin_main').load('jsp/admin_total_board_delete', param);
}

board_restore = function(sno) {
	var yn = confirm('게시글을 복구하시겠습니까?');
	if( !yn ) return;
	
	var frm = $('.frm')[0];
	var param = $(frm).serialize();
	console.log(param);
	$('#baik_admin_main').load('jsp/admin_total_board_restore', param);
}

list_board_delete = function(sno){
	var yn = confirm('게시글을 삭제하시겠습니까?');
	if( !yn ) return;
	
	var frm = $('.frm_search')[0];
	frm.sno.value=sno;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_board_delete', param);
}

list_board_restore = function(sno){
	var yn = confirm('게시글을 복구 하겠습니까?');
	if( !yn ) return;
	
	var frm = $('.frm_search')[0];
	frm.sno.value=sno;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_total_board_restore', param);
}
