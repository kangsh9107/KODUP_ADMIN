/**
 * 
 */
 
 function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('preview').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  } else {
    document.getElementById('preview').src = "";
  }
}

var modal = document.querySelector(".modal");
var img = document.querySelector(".img");
var modal_img = document.querySelector(".modal_content");
var span = document.querySelector(".close");

img.addEventListener('click', ()=>{
  modalDisplay("block");
  modal_img.src = img.src;
});
span.addEventListener('click', ()=>{
  modalDisplay("none");
});
modal.addEventListener('click', ()=>{
  modalDisplay("none");
});
function modalDisplay(text){
  modal.style.display = text;
}

movePage = function(nowPage) {
	var frm = $('.frm_search4')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_corp_certification', param);
};

view = function(corp_license,manager_name,manager_phone,manager_email,id){
	var frm = $('.frm_search4')[0];
	console.log(corp_license);
	img.src = "images/"+corp_license;
	frm.manager_name.value = manager_name;
	frm.manager_phone.value = manager_phone;
	frm.manager_email.value = manager_email;
	frm.id.value = id;
}

corp_approve = function(id) {
	var frm = $('.frm_search4')[0];
	id =frm.id.value;
	console.log(id);
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_corp_approve', param);
	
}