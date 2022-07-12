import heapq

n = int(input())

time = [0]*int(1e9)
for i in range(n):
    a, b = map(int, input().split())
    for j in range(a, b):
        time[j] += 1

print(max(time))
