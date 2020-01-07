import heapq
def takesecond(elem):
    return elem[1]
n=int(input("Enter number of vertices: "))
e=int(input("Enter number of edges: "))
graph=[]
dist=[]
for i in range(1,n+1):
    arr=[]
    graph.append(arr)
    dist.append(10000)
for i in range(e):
    a,b,c=[int(x) for x in input("Enter the edge in the format a b c: ").split()]
    x=int(a)
    y=int(b)
    wt=int(c)
    graph[a-1].append([y,wt])
start=int(input("shortest path from which vertex: "))
pq=[]
heapq.heappush(pq,[0,start])
# pq.append([start,0])
dist[start-1]=0
while(len(pq)!=0):
    xx=heapq.heappop(pq)
    u=xx[1]
    temp=xx[0]
    # pq.remove([u,temp])
    for i in range(len(graph[u-1])):
        v=graph[u-1][i][0]
        wt=graph[u-1][i][1]
        if(dist[v-1]>dist[u-1]+wt):
            dist[v-1]=dist[u-1]+wt
            heapq.heappush(pq,[dist[v-1],v])
            # pq.sort(key=takesecond)
print(dist)
# print(graph)
# print(len(graph[0]))
