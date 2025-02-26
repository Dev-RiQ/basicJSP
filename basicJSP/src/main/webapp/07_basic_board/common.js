function deleteBoard(e){
	location.href=`./_06_deleteBoardPro.jsp?no=${e.id}`;
}
function updateBoard(e){
	location.href=`./_05_updateBoard.jsp?no=${e.id}`;
}
function goUrl(msg, url){
	alert(msg);
	location.href=url;
}
