str=input("Enter string: ")
words=str.split(" ")
length=len(words)
for i in range(length):
    words[i]=words[i].lower()
words.sort()
i=0
unique=[]
while i<(length-2):
    while i < length and words[i] == words[i+1]:
        i+=1
    unique.append(words[i])
    i+=1
print(unique)
