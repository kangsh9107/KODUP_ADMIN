/**
 * 
 */

//일반회원 환율 
var normal_rate =$("#normal_rate").val();
var normal_pixel=$("#normal_pixel").val();
var normal_won = normal_rate*normal_pixel*0.01;
$("#normal_won").text(normal_won+"원");

$("#normal_rate").change(function(){
	var normal_rate =$("#normal_rate").val();
	var normal_pixel=$("#normal_pixel").val();
	var normal_won = normal_rate*normal_pixel*0.01;
	$("#normal_won").text(normal_won+"원");
})

$("#normal_pixel").change(function(){
	var normal_rate =$("#normal_rate").val();
	var normal_pixel=$("#normal_pixel").val();
	var normal_won = normal_rate*normal_pixel*0.01;
	$("#normal_won").text(normal_won+"원");
})

//퍼스널회원 환율
var personal_rate =$("#personal_rate").val();
var personal_pixel=$("#personal_pixel").val();
var personal_won = personal_rate*personal_pixel*0.01;
$("#personal_won").text(personal_won+"원");

$("#personal_rate").change(function(){
	var personal_rate =$("#personal_rate").val();
	var personal_pixel=$("#personal_pixel").val();
	var personal_won = personal_rate*personal_pixel*0.01;
	$("#personal_won").text(personal_won+"원");
})

$("#personal_pixel").change(function(){
	var personal_rate =$("#personal_rate").val();
	var personal_pixel=$("#personal_pixel").val();
	var personal_won = personal_rate*personal_pixel*0.01;
	$("#personal_won").text(personal_won+"원");
})

//플러스회원 환율 
var plus_rate =$("#plus_rate").val();
var plus_pixel=$("#plus_pixel").val();
var plus_won = plus_rate*plus_pixel*0.01;
$("#plus_won").text(plus_won+"원");

$("#plus_rate").change(function(){
	var plus_rate =$("#plus_rate").val();
	var plus_pixel=$("#plus_pixel").val();
	var plus_won = plus_rate*plus_pixel*0.01;
	$("#plus_won").text(plus_won+"원");
})

$("#plus_pixel").change(function(){
	var plus_rate =$("#plus_rate").val();
	var plus_pixel=$("#plus_pixel").val();
	var plus_won = plus_rate*plus_pixel*0.01;
	$("#plus_won").text(plus_won+"원");
})

//파트너회원 환율
var partner_rate =$("#partner_rate").val();
var partner_pixel=$("#partner_pixel").val();
var partner_won = partner_rate*partner_pixel*0.01;
$("#partner_won").text(partner_won+"원");

$("#partner_rate").change(function(){
	var partner_rate =$("#partner_rate").val();
	var partner_pixel=$("#partner_pixel").val();
	var partner_won = partner_rate*partner_pixel*0.01;
	$("#partner_won").text(partner_won+"원");
})

$("#partner_pixel").change(function(){
	var partner_rate =$("#partner_rate").val();
	var partner_pixel=$("#partner_pixel").val();
	var partner_won = partner_rate*partner_pixel*0.01;
	$("#partner_won").text(partner_won+"원");
})

//수정버튼

function update_pixelrate(){
	let yn = confirm('정말 수정 하시겠습니까 ?');
    if( !yn ) return;
    
	var param = $("#admin_pixel_rate_form").serialize();
	$.post("/jsp/update_rate", param, function(data){})
}







