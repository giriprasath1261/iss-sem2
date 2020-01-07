# n,m=input("Enter the dimension n,m: ").split()
n,m = [int(x) for x in input("Enter the dimensions: ").split()]
mat=[]
temp=input().split()
for i in range(n):
    arr=[]
    for j in range(m):
        arr.append(temp[i*m + j])
    mat.append(arr)
for i in range(m):
    arr=[]
    for j in range(n):
        arr.append(mat[j][i])
    print(arr)
