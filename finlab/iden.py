n=int(input("Enter the dimension!"))
mat=[]
for i in range(0,n):
    identity= []
    for j in range(0,n):
        if(i==j):
            identity.append(1)
        else:
            identity.append(0)
    mat.append(identity)
print(mat)
