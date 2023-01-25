/**
 * 
 */

frm = $('.frm_chart_board')[0];

BoardTypeFilter = function(boardtype){
	frm.boardtype.value = boardtype;
}
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
		$('#baik_admin_main').load('jsp/admin_chart_board_sort', param);
	}
	
}


google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart1);

drawChart1();
function drawChart1() {
	//var arr =[[$("#mDate1").val()],[$("#countBoard1").val()]];
	//console.log("arr"+arr);
	var arr = [['yyyy-MM-dd', '게시글수']];
	for(let i=1; i <= Number($('#BoardDataSize').val()); i++){
		arr.push([$("#mDate"+i).val(),Number($("#countBoard"+i).val())]);
	}
	/*
	arr.push([$("#mDate1").val(),Number($("#countBoard1").val())]);
	arr.push([$("#mDate2").val(),Number($("#countBoard2").val())]);
	console.log(arr);
/*	arr.push([$("#mDate1").val(),Number($("#countBoard1").val())]);
	arr.push([$("#mDate2").val(),Number($("#countBoard2").val())]);*/
/*	var data = google.visualization.arrayToDataTable(arr);
	//var arr = [['yyyy-MM-dd', '게시글수']];
	//console.log(boardData);
	var arr =[
		['yyyy-MM-dd', '게시글수', '댓글수'],
		['12-11',  5101,      2012],
		['12-12',  5370,      2312],
		['12-13',  6600,      3025],
		['12-14',  7030,      3513],
		['12-15',  6170,      2530],
		['12-16',  6300,      2623],
		['12-17',  5130,      1400]
	]*/
	var data = google.visualization.arrayToDataTable(arr);

	//curveType:'none'을 function' 으로 변경하면 부드러운 곡선으로 출력
	var options = {
		title: '기간별 게시글수',
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

google.charts.setOnLoadCallback(drawChart2);

drawChart2();
function drawChart2() {
	//var arr =[[$("#mDate1").val()],[$("#countBoard1").val()]];
	//console.log("arr"+arr);
	var arr = [['yyyy-MM-dd', '댓글수']];
	for(let i=1; i <= Number($('#ReplDataSize').val()); i++){
		arr.push([$("#replmDate"+i).val(),Number($("#countRepl"+i).val())]);
	}
	
	var data = google.visualization.arrayToDataTable(arr);

	//curveType:'none'을 function' 으로 변경하면 부드러운 곡선으로 출력
	var options = {
		title: '기간별 댓글수',
		curveType: 'none',
		
		hAxis: {format:'MM-dd'},//날짜 포맷이 var data에 들어오는데이터의 형태가 date타입으로 들어온경우 포맷가능
		titleTextStyle: {
			color: '#2D3644',
			fontSize: 15,
			bold: true
		},
		legend: { position: 'right' },
		series: {
	        0: { color: 'red' }
	  	}
	};
	var chart = new google.visualization.LineChart(document.getElementById('curve_chart2'));
	chart.draw(data, options);
}



