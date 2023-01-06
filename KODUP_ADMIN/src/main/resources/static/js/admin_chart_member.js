/**
 * 
 */
//전체회원-성비 원그래프
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	var data = google.visualization.arrayToDataTable([
		['성별','인원'],
		['남자회원',  637113],
		['여자회원',  423002]
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
		['', '남자회원', '여자회원'],//백작업후 x축 이름안보이게 position:none? 으로 주는방법찾아야함
		['10대', 50000,   20000],
		['20대', 187000, 156231],
		['30대', 219000, 146321],
		['40대', 111034,  84567],
		['50대', 58204,   34123]
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
        ["일반회원", 40, "#2D3644"],
        ["퍼스널멘토", 29, "#2D3644"],
        ["플러스멘토", 21, "#2D3644"],
        ["파트너멘토", 10, "#2D3644"]
      ]);



      var view = new google.visualization.DataView(data);
      view.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options= {
	
        legend: { position: "none" }
		//vAxis:{textPosition : 'none'} //세로축 제거
      };
      var chart = new google.visualization.BarChart(document.getElementById("barchart_values"));
      chart.draw(view, options);
  }

  
  
  
  
  
  
  
  
  
  