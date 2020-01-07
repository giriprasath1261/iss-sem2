#!/usr/bin/env node
function getMeNextFirst(str)
{
	str=String(str);
	a=str.split('');
	tmp=""
	for(i=0;i<a.length;i++)
	{
		if(i<a.length-1)
		{
			if(a[i]==" " && a[i+1]!=" ")
			{
				tmp+=a[i+1];
				tmp+=" "
				i++;
			}
			else
			{
				tmp+=a[i];
			}
		}
		else
		{
			tmp+=a[i];
		}
	}
	process.stdout.write(tmp);
}
x="Hello world !!"
getMeNextFirst(x);