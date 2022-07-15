from collections import deque

def dfs(graph, visited, start):
    visited[start] = True
    print(start, end=' ')
    for i in graph[start]:
        if not visited[i]:
            dfs(graph, visited, i)

def bfs(graph, visited, start):
    queue = deque([start])
    visited[start] = True
    while queue:
        v = queue.popleft()
        print(v, end=' ')
        for i in graph[v]:
            if not visited[i]:
                queue.append(i)
                visited[i] = True

n, m, v = map(int, input().split())

graph = [[] for _ in range(n+1)]
for i in range(m):
    v1, v2 = map(int, input().split())
    graph[v1].append(v2)
    graph[v2].append(v1)

for row in graph:
    row.sort()

visited = [False] * (n+1)

dfs(graph, visited, v)
print()

visited = [False] * (n+1)

bfs(graph, visited, v)