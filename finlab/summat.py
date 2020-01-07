mat=[]
n1,m1 = [int(x) for x in input("Enter the dimensions of first matrix: ").split()]
n2,m2 = [int(x) for x in input("Enter the dimensions of the second matrix: ").split()]
if(n1!=n2 or m1!=m2):
    print("dimensions not equal thus cant add exiting.... ")
    exit(0)
temp1=input("enter first matrix: ").split()
temp2=input("enter seond matrix: ").split()
for i in range(n1):
    arr=[]
    for j in range(m1):
        val=int(temp1[i*m1+j])+int(temp2[i*m2+j])
        arr.append(val)
    mat.append(arr)
    print(arr)
