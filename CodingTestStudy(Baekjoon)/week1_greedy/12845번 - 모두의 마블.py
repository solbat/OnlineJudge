n = int(input())
data = list(map(int, input().split()))

answer = max(data)*(n-2) + sum(data) if n>1 else 0

print(answer)
