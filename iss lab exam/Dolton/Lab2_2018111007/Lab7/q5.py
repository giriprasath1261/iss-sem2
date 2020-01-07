#!/usr/bin/env python3
def GetDays(date1,date2):
	date1=date1.split(',')
	date2=date2.split(',')
	arr1=[]
	arr2=[]
	for i in date1:
		arr1.append(i)
	for i in date2:
		arr2.append(i)
	for i in range(len(arr1)-1):
		arr1[i]=int(arr1[i])
	for i in range(len(arr2)):
		arr2[i]=int(arr2[i])
	if arr1[1]<=2:
		arr1[1]+=12
		arr1[0]-=1
	if arr2[1]<=2:
		arr2[1]+=12
		arr2[0]-=1
	val1=int((1461*arr1[0]))/4+int((153*arr1[1]+8)/5)+arr1[2]
	val2=int((1461*arr2[0])/4)+int((153*arr2[1]+8)/5)+arr2[2]
	x=int(val1-val2)
	if x<0:
		return int(1-x)
	return x+1;
x=input().split()
print(GetDays(x[0],x[1]))