#!/usr/bin/env python3
def SpaceToHyphen(strinput):
	x="-"
	strinput=strinput.split()
	x=x.join(strinput)
	return x
x=input()
print(SpaceToHyphen(x))