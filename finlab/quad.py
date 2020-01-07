import math
flag=0
a=int(input("Enter co eff of x^2: "))
b=int(input("Enter co-eff of x: "))
c=int(input("Enter the constant: "))
det=(b*b)-(4*a*c)
if(det<0):
    flag=1
    det=det*(-1)
if(flag==0):
    root1=((-b)+math.sqrt(det))/(2*a)
    root2=((-b)-math.sqrt(det))/(2*a)
    print("root1: "+str(root1)+" root2: "+str(root2))
else:
    root1=(-b)/(2*a)
    det1=math.sqrt(det)/(2*a)
    root2=(-b)/(2*a)
    det2=math.sqrt(det)/(2*a)
    print("root1: "+str(root1)+"+i"+str(det1)+" root2: "+str(root2)+"-i"+str(det2))
# print(math.sqrt(-1))
