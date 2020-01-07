#!/usr/bin/env node
function getHighestMarks()
{
	var max=0;
	lal={}
	for(i in module.exports)
	{
		s=0;
		for(j=0;j<5;j++)
		{
			s+=module.exports[i][j];
		}
		lal[i]=s;
		if(max<s)
		{
			max=s;
		}
	}
	console.log(max);
	for(i in module.exports)
	{
		if(lal[i]==max)
		{
			console.log(i);
		}
	}
}
function getSubject2Toppers()
{
	arr=new Array();
	tmp={}
	for(i in module.exports)
	{
		arr.push(i);
		tmp[i]=module.exports[i][1];
	}
	for(i=0;i<arr.length-1;i++)
	{
		for(j=i+1;j<arr.length;j++)
		{
			if(tmp[arr[j]]>tmp[arr[i]])
			{
				var lol=arr[j];
				arr[j]=arr[i];
				arr[i]=lol;
			}
		}
	}
	for(i=0;i<arr.length;i++)
	{
		console.log(arr[i]+" "+tmp[arr[i]]);
	}
}
module.exports=require('./data.js');
getHighestMarks();
getSubject2Toppers();