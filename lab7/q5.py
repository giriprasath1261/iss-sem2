file1 = open("file.txt","r")
# print(file1.read())
string = file1.read().replace('.','')
string = string.lower()
string = string.replace(',','')
string = string.replace(':','')
string = string.replace(';','')
string = string.replace('?','')
string = string.replace('!','')
string = string.replace('\n','')
list = string.split(' ')
# print(list)
while len(list)!=0:
    i=list[0]
    print(i+": "+str(list.count(i)))
    temp=list.count(i)
    while temp > 0:
        list.remove(i)
        temp=temp-1
