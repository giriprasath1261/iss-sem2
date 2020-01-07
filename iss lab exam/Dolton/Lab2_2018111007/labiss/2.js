#!/usr/bin/env node
function altSpaceToUnderscore(str)
{
	str=String(str);
	s=str.split(" ");
	for(i=0;i<s.length;i++)
	{
		y+=s[i];
		if(i!=s.length-1)
		{
			if(i%2==0)
			{
				y+=" ";
			}
			else
			{
				y+="_"
			}
		}
	}
}
x="Hello there, how are you !!"
var y="";
altSpaceToUnderscore(x);
console.log(y);
