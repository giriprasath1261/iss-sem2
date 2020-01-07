str=input("Enter the string: ")
d=int(input("Enter the number of rotations: "))
n=len(str)
d=d%n
lfirst=str[0:d]
lsecond=str[d :]
print(lsecond+lfirst)
