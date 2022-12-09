import math

n = int(input())
classes = list(map(int, input().split()))
b, c = map(int, input().split())

answer = n

for a in classes:
    if a-b>0:
        answer += math.ceil((a-b)/c)

print(answer)