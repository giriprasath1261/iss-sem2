window.onscroll=function(){change()};
var tmp=document.getElementById("navbar").offsetTop;
function change()
{
	if(window.pageYOffset>=tmp)
	{
		document.getElementById("navbar").classList.add("navbarstick");
	}
	else
	{
    	document.getElementById("navbar").classList.remove("navbarstick");
	}
}
if(localStorage.getItem("tmp2") === null)
{
	dict={}
	localStorage.setItem('tmp2',JSON.stringify(dict));
}
function upd()
{
	var dict2=JSON.parse(localStorage.getItem('tmp2'));
	dict2[document.getElementById('n1').value]=[document.getElementById('s1').value,document.getElementById('s2').value]
	localStorage.setItem('tmp2',JSON.stringify(dict2));
	location.reload();
}