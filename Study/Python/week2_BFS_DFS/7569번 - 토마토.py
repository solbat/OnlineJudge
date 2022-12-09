from collections import deque
import sys

input = sys.stdin.readline

# 가로 m, 세로 n, 높이 h
m, n, h = map(int, input().split())

box = [[list(map(int, input().split())) for _ in range(n)] for _ in range(h)]
day = 0

dx = [0, 0, 0, 0, -1, 1]
dy = [0, 0, -1, 1, 0, 0]
dz = [-1, 1, 0, 0, 0, 0]

queue = deque()
# 처음부터 익은 토마토 찾기
for height in range(h):
    for i in range(n):
        for j in range(m):
            if box[height][i][j] == 1:
                queue.append((height, i, j))

while queue:
    z, x, y = queue.popleft()

    for i in range(6):
        nx = x + dx[i]
        ny = y + dy[i]
        nz = z + dz[i]
        
        # 범위를 벗어날 때 제외
        if nx > n-1 or nx < 0 or ny > m-1 or ny < 0 or nz > h-1 or nz < 0:
            continue

        # 익지 않은 토마토에 대해
        if box[nz][nx][ny] == 0:
            box[nz][nx][ny] = box[z][x][y] + 1
            queue.append((nz, nx, ny))

for height in range(h):
    for i in range(n):
        for j in range(m):
            if box[height][i][j] == 0:
                print(-1)
                exit()
            day = max(day, box[height][i][j])

print(day-1)