var dict2=JSON.parse(localStorage.getItem('tmp2'));
c1=0;
c2=0;
c3=0;
for(i in dict2)
{
	if(i!="")
	{
		if(dict2[i][1][0]=='I')
			c2+=1;
		else
		{
			if(dict2[i][1][0]=='P')
				c1+=1;
			else
				c3+=1;
		}
		document.write('<tr><td>');
		document.write(i);
		document.write('</td>');
		document.write('<td>');
		document.write(dict2[i][0]);
		document.write('</td>');
		document.write('<td>');
		document.write(dict2[i][1]);
		document.write('</td></tr>');
	}
}
document.write('<tr><td colspan="3"> Proficient Count = ' + c1 + '</td></tr>');
document.write('<tr><td colspan="3"> Intermediate Count = ' + c2 + '</td></tr>');
document.write('<tr><td colspan="3"> Beginner Count = ' + c3 + '</td></tr>');