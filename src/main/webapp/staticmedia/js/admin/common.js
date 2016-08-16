/**
 * Created by Viki.Feng on 21/01/2016.
 */
//Ajax Setup
$.ajaxSetup({
    //Check if session time out
    dataFilter: function (data, type) {
        //WARNING: Don't change the script string
        if (data == "<script type='text/javascript'>window.top.location.href='/home/loginPage';</script>") {
            alert(COMMON.common_message_SessionTimeout);
            window.top.location.href = '/home/loginPage';
        } else {
            return data;
        }
    }
});

//Function: Get Cookie
function getCookie(c_name) {
    var c_start, c_end;
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
            c_end = document.cookie.indexOf(";", c_start);
            if (c_end == -1) {
                c_end = document.cookie.length;
            }
            return unescape(document.cookie.substring(c_start, c_end));
        }
    }
    return "";
}

//Load Language Pack
var languageSetup = getCookie("Language");
if (languageSetup == "") {
    languageSetup = "en";
}
document.write('<script type="text/javascript" charset="utf-8" src="/staticmedia/i18n/messages_' + languageSetup + '.js"></script>');
