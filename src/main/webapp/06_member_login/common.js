function goBack(msg) {
	alert(msg);
	history.back();
}
function goUrl(msg, url) {
	alert(msg);
	location.href = url;
}
function goMain(msg) {
	alert(msg);
	location.href = './main.jsp';
}
function memberDelete(e){
	location.href = `./adminDeletePro.jsp?value=${e.value}`;
}