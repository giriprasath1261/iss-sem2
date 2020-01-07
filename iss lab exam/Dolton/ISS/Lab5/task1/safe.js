#!/usr/bin/env node
function myArray(arr)
{
	this.sum=function()
	{
		c=0;
		for(i=0;i<arr.length;i++)
		{
			c+=arr[i];
		}
		return c;
	}
	this.product=function()
	{
		c=1;
		for(i=0;i<arr.length;i++)
		{
			c*=arr[i];
		}
		return c;
	}
	this.sort=function()
	{
		for(i=0;i<arr.length-1;i++)
		{
			for(j=i+1;j<arr.length;j++)
			{
				if(arr[i]>arr[j])
				{
					tmp=arr[i];
					arr[i]=arr[j];
					arr[j]=tmp;
				}
			}
		}
		return arr;
	}
	this.modify=function(i)
	{
		i-=1;
		arr[i]+=1;
		return arr;
	}
	this.print=function()
	{
		return arr;
	}
}
arr=[5,2,3,4]
obj=new myArray(arr);
console.log(obj.sum());
console.log(obj.product());
console.log(obj.sort());
console.log(obj.modify(2));
console.log(obj.print());
