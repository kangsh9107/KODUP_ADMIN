/**
 * 
 */
console.log("차트보드js 연결");

google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

drawChart();
function drawChart() {
	var data = google.visualization.arrayToDataTable([
		['yyyy-MM-dd', '게시글수', '댓글수'],
		['12-11',  5101,      2012],
		['12-12',  5370,      2312],
		['12-13',  6600,      3025],
		['12-14',  7030,      3513],
		['12-15',  6170,      2530],
		['12-16',  6300,      2623],
		['12-17',  5130,      1400]
	]);
	
	//curveType:'none'을 function' 으로 변경하면 부드러운 곡선으로 출력
	var options = {
		title: '기간별 게시글수 / 댓글수',
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
  