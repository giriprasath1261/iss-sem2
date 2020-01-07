#!/usr/bin/env node
function toCamelCase(str)
{
	str=String(str);
	s=str.split(" ");
	ans=""
	for(i=0;i<s.length;i++)
	{
		if(s[i][0].charCodeAt(0)<93 && s[i][0].charCodeAt(0)>64)
		{
			ans+=String.fromCharCode(s[i][0].charCodeAt(0)+32);
			for(j=1;j<s[i].length;j++)
			{
				ans+=s[i][j];
			}
		}
		else
		{
			if(s[i][0].charCodeAt(0)<123 && s[i][0].charCodeAt(0)>96)
			{
				ans+=String.fromCharCode(s[i][0].charCodeAt(0)-32);
				for(j=1;j<s[i].length;j++)
				{
					ans+=s[i][j];
				}
			}
			else
			{
				for(j=0;j<s[i].length;j++)
				{
					ans+=s[i][j];
				}
			}
		}
		ans+=" ";
	}
	return ans;
}
x="Hello there, how are you !!"
y=toCamelCase(x);
console.log(y);
