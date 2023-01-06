/**
 * 
 */


google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

drawChart();
function drawChart() {
	var data = google.visualization.arrayToDataTable([
		['MM-dd', '픽셀충전', '픽셀환전'],
		['1',   400000,      30000],
		['2',   300000,      70000],
		['3',   400000,      40000],
		['4',   400000,      60000],
		['5',   500000,      70000],
		['6',   550000,      40000],
		['7',   340000,      60000],
		['8',   490000,      76000],
		['9',   400000,      92000],
		['10',  390000,      14000],
		['11',  310000,      43000],
		['12',  350000,      14000],
		['13',  290000,      14000],
		['14',  310000,      50000],
		['15',  290000,      70000],
		['16',  290000,      50000],
		['17',  410000,      120000],
		['18',  300000,      130000],
		['19',  310000,      140000],
		['20',  430000,      110000],
		['21',  290000,      120000],
		['22',  310000,      130000],
		['23',  310000,      140000],
		['24',  300000,      74000],
		['25',  290000,      84000],
		['26',  310000,      90000],
		['27',  290000,      40000],
		['28',  220000,      70000],
		['29',  220000,      60000],
		['30',  250000,      44000]
		
	]);
	
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
  