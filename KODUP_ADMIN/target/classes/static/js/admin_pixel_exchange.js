/**
 * admin_pixel_exchange.jsp
 */
$('#filter_status').val($('#statusFilter').val()).prop("selected",true);
$('#totApplyPixel').text(500);
 movePage = function(nowPage){
	frm = $('.frm_pixel')[0];
	frm.nowPage.value = nowPage;
	param = $(frm).serialize();
	
	$.post("jsp/admin_exchange", param, function(data){
		$('#baik_admin_main').html(data);
	})
}
	
statusFilter = function(status){
	frm = $('.frm_pixel')[0];
	frm.statusFilter.value = status;
	param = $(frm).serialize();
	$.post("jsp/admin_exchange", param, function(data){
		$('#baik_admin_main').html(data);
	})
}

applyDateFilter = function(sort){
	frm = $('.frm_pixel')[0];
	frm.sortFilter.value=sort;
	param = $(frm).serialize();
	
	$.post("jsp/admin_exchange", param, function(data){
		$('#baik_admin_main').html(data);
	})
}

btnApprove= function(sno,id,applyPixel){
	if( $('#checkBank').val()==0 ){
		let yn = confirm(
		'승인 하시겠습니까 ?'
		+'\nID : '+ id 
		+'\n등급 : '+ $('.exchange_grade'+sno).text().trim()
		+'\n환전 : '+ $('.exchange_pixel'+sno).text().trim()
		+' → '+ $('.exchange_money'+sno).text().trim()
		);
	    if( !yn ) return;
		
		frm = $('.frm_pixel')[0];
		frm.pixel_exchange_list_sno.value = sno;
		frm.id.value = id;
		frm.budget.value=applyPixel*Number($('#rateByGrade'+sno).val())*0.01;
		
		param = $(frm).serialize();
		$.post("jsp/pixel_approve", param, function(data){
			$('#baik_admin_main').load('jsp/admin_exchange', param);
			alert(data);
		})
	}
	
	if( $('#checkBank').val()==1){
		alert("계좌정보가 확인되지 않아 진행할 수 없습니다.");
	}
}	
