a=int(input("Enter the first num: "))
b=int(input("Enter the second num: "))
if a<b:
    small=a
else:
    small=b
for i in range(1,small+1):
    if((a%i==0)and(b%i==0)):
        hcf=i
print(hcf)
