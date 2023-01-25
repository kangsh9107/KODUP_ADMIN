/**
 * admin_home
 */
 
/* 
notification = function(){
Notification.requestPermission();
var permission = Notification.requestPermission();

function getNotificationPermission() {
        // 브라우저 지원 여부 체크
        if (!("Notification" in window)) {
            alert("데스크톱 알림을 지원하지 않는 브라우저입니다.");
        }
        // 데스크탑 알림 권한 요청
        Notification.requestPermission(function (result) {
            // 권한 거절
            if(result == 'denied') {
                Notification.requestPermission();
                alert('알림을 차단하셨습니다.\n브라우저의 사이트 설정에서 변경하실 수 있습니다.');
                return false;
            }
            else if (result == 'granted'){
                alert('알림을 허용하셨습니다.');
            }
        });
    }
new Notification("멘토 인증 신청이 요청되었습니다.", 
                 {body:'lgtwins0501 님께서 멘토 인증 신청을 하였습니다.'});
}
*/

(setInterval(function() {
   
}, 100))();
