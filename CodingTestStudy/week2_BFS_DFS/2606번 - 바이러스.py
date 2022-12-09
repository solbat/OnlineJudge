n = int(input()) # 컴퓨터의 수
m = int(input()) # 연결된 컴퓨터 쌍의 수

graph = [[] for _ in range(n+1)]

visited = [0] * (n+1)

for i in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)

def dfs(graph, visited, start):
    visited[start] = 1
    for v in graph[start]:
        if visited[v] == 0:
            dfs(graph, visited, v)

dfs(graph, visited, 1)

print(sum(visited)-1)