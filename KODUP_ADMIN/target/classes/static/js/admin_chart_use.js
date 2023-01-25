/**
 * 
 */

 /**
 * 
 */
frm = $('.frm_chart_use')[0];
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

searchNal = function(searchNal){
	frm.nal.value = searchNal;
}

showChart = function(){
	if(frm.nal.value.length < 1){
		alert("기간을 선택해주세요");
	}else{
	param = $(frm).serialize();
		$('#baik_admin_main').load('jsp/admin_chart_use_sort', param);
	}
}


drawChart();
function drawChart() {
	
	var data = google.visualization.arrayToDataTable([
		['time','방문자수'],
		['4시',   Number($("#before4").val())],
		['8시',   Number($("#before8").val())],
		['12시',  Number($("#before12").val())],
		['16시',  Number($("#before16").val())],
		['20시',  Number($("#before20").val())],
		['24시',  Number($("#before24").val())]
	]);
	
	//curveType:'none'을 function' 으로 변경하면 부드러운 곡선으로 출력
	var options = {
		title: '코덥 시간대별 방문자수',
		curveType: 'none',
		titleTextStyle: {
			color: '#2D3644',
			fontSize: 15,
			bold: true
		},
		series: {
	        0: { color: '#2D3644' }
	  	},
		legend: { position: 'right' }
	};
	
	var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
	chart.draw(data, options);

}
  