document.getElementById("res").innerHTML = "Likes : " + localStorage.getItem("cntit");
function clickcnt() {
    if (localStorage.getItem("cntit")) {
      localStorage.setItem("cntit",Number(localStorage.getItem("cntit"))+1);
    } else {
      localStorage.setItem("cntit",1);      
    }
    document.getElementById("res").innerHTML = "Likes : " + localStorage.getItem("cntit");
}
var cp=0;
jso={0:"./../img/pic1.jpeg",1:"./../img/pic2.jpeg",2:"./../img/pic3.jpeg",3:"./../img/pic4.jpeg",4:"./../img/pic5.jpeg"}
function pict()
{
	cp+=1;
	cp%=5;
	document.getElementById('chg').setAttribute("src", jso[cp]);
}