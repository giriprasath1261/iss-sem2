#!/usr/bin/env python3
import sys
with open(sys.argv[1],'r') as file:
	x=file.read().replace('"',' ').replace('?','').replace('\n',' ').replace(',','').replace('.','').replace('!','').replace(':','').replace(';','').replace('(','').replace(')','')
x=x.lower()
dict={}
print(x)
x=x.split()
for i in x:
	try:
		dict[i]+=1
	except:
		dict[i]=1
file.close()
file=open(sys.argv[2],'w')
for i in dict:
	file.write(i)
	file.write(": ")
	file.write(str(dict[i]))
	file.write("\n")
file.close()