def JoinIntegers(list):
    newstring=""
    for i in list:
        newstring+=str(i)
    return int(newstring)

string=input("Enter the numbers: ")
list=string.split(',')
print(JoinIntegers(list))
