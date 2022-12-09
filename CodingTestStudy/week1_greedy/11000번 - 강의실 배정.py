import sys, heapq
input = sys.stdin.readline

n = int(input())
data = sorted([list(map(int, input().split())) for _ in range(n)])

room = []
heapq.heappush(room, data[0][1])

for i in range(1, n):
    if data[i][0] < room[0]:
        heapq.heappush(room, data[i][1])
    else:
        heapq.heappop(room)
        heapq.heappush(room, data[i][1])

print(len(room))
