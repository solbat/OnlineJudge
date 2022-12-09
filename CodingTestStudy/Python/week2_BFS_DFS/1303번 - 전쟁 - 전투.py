from collections import deque

# 가로가 m, 세로가 n
m, n = map(int, input().split())

# 12시 3시 6시 9시
dx = [-1, 0, 1, 0]
dy = [0, 1, 0, -1]

def bfs(graph, visited, start, color):
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
            if nx >= 1 and nx <= n and ny >= 1 and ny <= m and not visited[nx][ny] and graph[nx][ny] == color:
                queue.append((nx, ny))
                visited[nx][ny] = True
    return count

graph = [''] + [' ' + input() for i in range(n)]

visited = [[False] * (m+1) for _ in range(n+1)]

power_white = 0
power_blue = 0

for i in range(1, n+1):
    for j in range(1, m+1):
        if not visited[i][j]:
            if graph[i][j] == 'W':
                power_white += bfs(graph, visited, (i, j), 'W')**2
            else:
                power_blue += bfs(graph, visited, (i, j), 'B')**2

print(power_white, power_blue)