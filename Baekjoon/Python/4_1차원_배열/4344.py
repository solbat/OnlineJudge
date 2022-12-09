C=int(input())
l=[]
for i in range(C):
    n=list(map(int, input().split()))
    r=0
    for j in range(len(n)-1):
        if n[j+1] > (sum(n)-n[0])/n[0]:
            r+=1
    l.append(r/n[0]*100)
for i in range(C):
    print('{0:0.3f}%'.format(l[i]))