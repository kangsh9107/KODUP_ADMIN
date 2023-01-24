/**
 * 
 */
frm = $('.frm_chart_board')[0];
StartNal = function(startNal){
	frm.startNal.value = startNal;
}
EndNal = function(endNal){
	frm.endNal.value = endNal;
}

showChart = function(){
	if(frm.startNal.value.length < 1 || frm.endNal.value.length <1 ){
		alert("기간을 선택해주세요");
	}else if(frm.startNal.value.length>1 && frm.endNal.value.length>1){
		param = $(frm).serialize();
		$('#baik_admin_main').load('jsp/admin_chart_pixel_sort', param);
	}
	
}

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);


drawChart();
function drawChart() {
	
	var arr = [['MM-dd', '픽셀충전', '픽셀환전']];
	for(let i=1; i <= Number($('#PixelDataSize').val()); i++){
		arr.push([$("#mDate"+i).val(),Number($("#plusPixel"+i).val()),Number($("#minusPixel"+i).val())]);
	}
	var data = google.visualization.arrayToDataTable(arr);
	/*
	var data = google.visualization.arrayToDataTable([
		['MM-dd', '픽셀충전', '픽셀환전'],
		['1',   400000,      30000],
		['2',   300000,      70000],
		['3',   400000,      40000],
		['4',   400000,      60000],
		['5',   500000,      70000],
		['6',   550000,      40000],
		['7',   340000,      60000]
	]);
	*/
	//curveType:'none'을 function' 으로 변경하면 부드러운 곡선으로 출력
	var options = {
		title: '기간별 픽셀충전량 / 픽셀환전량',
		curveType: 'none',
		
		hAxis: {format:'MM-dd'},//날짜 포맷이 var data에 들어오는데이터의 형태가 date타입으로 들어온경우 포맷가능
		titleTextStyle: {
			color: '#2D3644',
			fontSize: 15,
			bold: true
		},
		legend: { position: 'right' },
		series: {
	        0: { color: '#2D3644' }
	  	}
	};
	
	var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
	chart.draw(data, options);

}
  