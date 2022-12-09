from collections import deque

n, m, k = map(int, input().split())

graph = [[None]] + [[None] + [0]*(m) for _ in range(n)]

for i in range(k):
    x, y = map(int, input().split())
    graph[x][y] = 1

dx = [0, 0, -1, 1]
dy = [-1, 1, 0, 0]

visited = [[False]*(m+1) for _ in range(n+1)]
biggest = 0

def bfs(graph, visited, start):
    sx, sy = start
    queue = deque([(sx, sy)])
    visited[sx][sy] = True
    count = 0
    while queue:
        x, y = queue.popleft()
        count += 1
        for i in range(4):
            nx = x + dx[i]
            ny = y + dy[i]
            if nx < 1 or nx > n or ny < 1 or ny > m:
                continue
            if visited[nx][ny]:
                continue
            if graph[nx][ny] == 1:
                queue.append((nx, ny))
                visited[nx][ny] = True
    return count

for i in range(1, n+1):
    for j in range(1, m+1):
        if not visited[i][j] and graph[i][j] == 1:
            biggest = max(biggest, bfs(graph, visited, (i, j)))

print(biggest)