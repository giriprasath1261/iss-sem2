mat=[]
n1,m1 = [int(x) for x in input("Enter the dimensions of first matrix: ").split()]
n2,m2 = [int(x) for x in input("Enter the dimensions of the second matrix: ").split()]
if(m1!=n2):
    print("dimensions dont match for multiplication thus cant multiply exiting.... ")
    exit(0)
temp1=input("enter first matrix: ").split()
temp2=input("enter seond matrix: ").split()
val=0
for i in range(n1):
    arr=[]
    for j in range(m2):
        for k in range(n2):
            val=val+int(temp1[i*m1+k])*int(temp2[k*m2+j])
        arr.append(val)
        val=0
    print(arr)
    mat.append(arr)
