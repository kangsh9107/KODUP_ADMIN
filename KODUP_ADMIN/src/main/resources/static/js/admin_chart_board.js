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
		['2022-12-11',  5101,      2012],
		['2022-12-12',  5370,      2312],
		['2022-12-13',  6600,      3025],
		['2022-12-14',  7030,      3513],
		['2022-12-15',  6170,      2530],
		['2022-12-16',  6300,      2623],
		['2022-12-17',  5130,      1400]
	]);
	
	//curveType:'none'을 function' 으로 변경하면 부드러운 곡선으로 출력
	var options = {
		title: 'QnA 게시판 기간별 게시글수, 댓글수',
		curveType: 'none',
		legend: { position: 'bottom' },
		hAxis: { format: 'MM-dd'}
	};
	
	var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));
	chart.draw(data, options);

}
  