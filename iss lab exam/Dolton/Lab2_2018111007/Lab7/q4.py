#!/usr/bin/env python3
def JoinIntegers(lst):
	x=""
	x=x.join(lst)
	return int(x)
print("Enter the Numbers separated by a space :")
x=input().split()
list1=[]
for i in x:
	list1.append(i)
print(JoinIntegers(list1))