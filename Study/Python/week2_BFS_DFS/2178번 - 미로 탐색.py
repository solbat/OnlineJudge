from collections import deque

n, m = map(int, input().split())
array = [[None]]+[[None] + list(map(int, input())) for _ in range(n)]

# 왼 오 위 아래
dx = [0, 0, -1, 1]
dy = [-1, 1, 0, 0]

def bfs(x, y):
    queue = deque([(x, y)])
    
    while queue:
        x, y = queue.popleft()
        for i in range(4):
            nx = x + dx[i]
            ny = y + dy[i]
            if nx < 1 or nx > n or ny < 1 or ny > m:
                continue
            if array[nx][ny] == 0:
                continue
            if array[nx][ny] == 1:
                array[nx][ny] = array[x][y] + 1
                queue.append((nx, ny))
    return array[n][m]

print(bfs(1, 1))