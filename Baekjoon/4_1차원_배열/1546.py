N=int(input())
l=list(map(int, input().split()))
M=max(l)
print(sum(l)/len(l)/M*100)