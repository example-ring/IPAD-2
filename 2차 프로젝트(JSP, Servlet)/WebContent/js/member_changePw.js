function checkPasswordMatch() {
    console.log("checkPasswordMatch 함수 호출");

    if (document.reg_frm.pw.value != document.reg_frm.pw_check.value) {
        alert('비밀번호가 일치하지 않습니다.');
        return false;
    } 
    
    if (document.reg_frm.pw.value.length == 0) {
        alert('비밀번호를 입력해 주세요');
        reg_frm.pw.focus();
        return false;
    }
    
    return true;
}