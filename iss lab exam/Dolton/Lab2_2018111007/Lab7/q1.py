#!/usr/bin/env python3
def isLeapYear(a):
	if a%400==0:
		return 1;
	if a%4==0 and a%100!=0:
		return 1;
		return 0;
x=int(input())
print(bool(isLeapYear(x)))