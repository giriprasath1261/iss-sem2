def UniqueSort(string):
    var=0
    my_list = string.split(',')
    newlist=[]
    for i in my_list:
        if i in newlist:
            var=var+1
        else:
            newlist.append(i)

    newlist.sort()
    print(newlist)

string = input("Enter the string: ")
UniqueSort(string)
# print(my_list)
