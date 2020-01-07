#!/usr/bin/env python3
def UniqueSort(strinput):
	strinput=list(strinput.split(', '))
	strinput=list(dict.fromkeys(strinput))
	return ', '.join(strinput)
x=input()
print(UniqueSort(x))