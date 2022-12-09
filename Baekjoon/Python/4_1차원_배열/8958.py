N=int(input())
l=[]
for i in range(N):
    l.append(input())

for i in range(N):
    a=0
    b=0
    for j in range(len(l[i])):
        if l[i][j] == 'O':
            b+=1
            a+=b
        else:
            b=0
    print(a)

# exec("print(sum(len(i)*(len(i)+1)//2 for i in input().split('X')));"*int(input()))