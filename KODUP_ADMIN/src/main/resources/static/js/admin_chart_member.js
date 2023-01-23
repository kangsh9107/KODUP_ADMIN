/**
 * 
 */
//전체회원-성비 원그래프
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	var data = google.visualization.arrayToDataTable([
		['성별','인원'],
		['남자회원',  Number($('#countMale').val())],
		['여자회원',  Number($('#countFemale').val())]
	]);
	var options = {
		title: '전체 회원 성비',
		legend: { position: 'bottom' },
		titleTextStyle: {
			color: '#2D3644',
			fontSize: 15,
			bold: true
		},
		textStyle: {
			color: '#000',
			fontSize: 10
		},
		slices: {
			0: { color: '#2D3644' },
			1: { color: '#BA1CE1' }
		}
	};
	var chart = new google.visualization.PieChart(document.getElementById('piechart'));
	chart.draw(data, options);
}

//연령대별 성별비율 열그래프
google.charts.load('current', {'packages':['bar']});
google.charts.setOnLoadCallback(drawChart2);

function drawChart2() {
	var data = google.visualization.arrayToDataTable([
		['', '남자회원', '여자회원'],
		['10대', Number($('#m10dae').val()),Number($('#f10dae').val())],
		['20대', Number($('#m20dae').val()),Number($('#f20dae').val())],
		['30대', Number($('#m30dae').val()),Number($('#f30dae').val())],
		['40대', Number($('#m40dae').val()),Number($('#f40dae').val())],
		['50대', Number($('#m50dae').val()),Number($('#f50dae').val())],
		['60대', Number($('#m60dae').val()),Number($('#f60dae').val())]
	]);
	
	var options = {
		title: '전체회원 연령대별 성비 그래프 ',
		//subtitle: 'Sales, Expenses: 2014-2017',
		titleTextStyle: {
				color: '#2D3644',
				fontSize: 15,
				
				bold: true
		},
		series: {
				0: { color: '#2D3644' },
				1: { color: '#BA1CE1' }
		}
		
	};
	
	var chart = new google.charts.Bar(document.getElementById('columnchart_material'));
	
	chart.draw(data, google.charts.Bar.convertOptions(options));
}

//등급별 통계 세로행 그래프
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart3);

function drawChart3() {
	var data = google.visualization.arrayToDataTable([
	["유저등급", "Density", { role: "style" } ],
	["일반회원",  Number($('#countNormal').val()), "#2D3644"],
	["퍼스널멘토", Number($('#countPersonal').val()), "#2D3644"],
	["플러스멘토", Number($('#countPlus').val()), "#2D3644"],
	["파트너멘토", Number($('#countPartner').val()), "#2D3644"]
]);



var view = new google.visualization.DataView(data);
view.setColumns([0, 1,
	{	
		calc: "stringify",
		sourceColumn: 1,
		type: "string",
		role: "annotation"
	},
	2]);

var options= {
	legend: { position: "none" }
		//vAxis:{textPosition : 'none'} //세로축 제거
      };
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);
}

