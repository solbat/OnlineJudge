import sys
input = sys.stdin.readline

n = int(input())

weights = sorted([int(input()) for _ in range(n)])

answer = 0
for i in range(n):
    answer = max(answer, weights[i]*(n-i))

print(answer)