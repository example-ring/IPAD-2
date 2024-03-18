//enter => <br>
var text = document.getElementById("textarea").value;
text = text.replace(/(?:\r\n|\r|\n)/g, '<br>');

//<br> => enter
var text = document.getElementById("textarea").value;
text = text.replaceAll("<br>", "\r\n");


//문서 로딩 후 실행될 함수
document.addEventListener("DOMContentLoaded", function() {
    // content-view-link 클래스를 가진 요소를 찾아 클릭 이벤트에 대한 핸들러 등록
    var elements = document.getElementsByClassName("content-view-link");
    for (var i = 0; i < elements.length; i++) {
        elements[i].addEventListener("click", function() {
            // 경고 창 띄우기
            alert('글을 열람하시려면 로그인이 필요합니다.');
        });
    }
});