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
	var frm = $('.frm_search5')[0];
	frm.nowPage.value = nowPage;
	var param = $(frm).serialize();
	$('#baik_admin_main').load('jsp/admin_mento_certification', param);
};

view = function(career_certification,id,join_date,email,grade){
	var frm = $('.frm_search5')[0];
	img.src = "images/"+career_certification;
	frm.id.value = id;
	frm.join_date.value = join_date;
	frm.email.value = email;
	frm.GRADE.value = grade;	
}

$("select[name=grade]").change(function(){
    console.log($(this).val()); //value값 가져오기
    var frm = $('.frm_search5')[0];
    frm.GRADE.value = $(this).val();
    var param = $(frm).serialize();
    $('#baik_admin_main').load('jsp/admin_mento_change_grade', param);
});

