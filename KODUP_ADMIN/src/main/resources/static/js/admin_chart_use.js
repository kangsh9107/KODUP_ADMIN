/**
 * 
 */

 /**
 * 
 */

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

drawChart();
function drawChart() {
	var data = google.visualization.arrayToDataTable([
		['time','방문자수'],
		['0시',	 20100],
		['4시',    23120],
		['8시',    90250],
		['12시',  250513],
		['16시',  270030],
		['20시',  132939],
		['24시',   95032]
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
  