/**
 * 
 */

 
  $('.btnBoard').on('click',function(){
  console.log("연결");
 	$('#section').load('/board/board_select2');
 });
 
 $('.btnGuestBook').on('click',function(){
 console.log("연결");
 $('#section').load('/guestbook/guestbook_select'); 
 }); 