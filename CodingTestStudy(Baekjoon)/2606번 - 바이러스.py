from collections import deque

n = int(input()) # 컴퓨터의 수
m = int(input()) # 연결된 컴퓨터 쌍의 수

graph = [[] for _ in range(n+1)]

visited = [False] * (n+1)

# BFS 메서드 정의
def bfs(graph, start, visited):
    count = 0
    # 큐(Queue) 구현을 위해 deque 라이브러리 사용
    queue = deque([start])
    # 현재 노드를 방문 처리
    visited[start] = True
    # 큐가 빌 때까지 반복
    while queue:
        # 큐에서 하나의 원소를 뽑아 출력
        v = queue.popleft()
        count += 1
        # 해당 원소와 연결된, 아직 방문하지 않은 원소들을 큐에 삽입
        for i in graph[v]:
            if not visited[i]:
                queue.append(i)
                visited[i] = True
    
    return count

for i in range(m):
    a, b = map(int, input().split())
    graph[a].append(b)
    graph[b].append(a)

print(bfs(graph, 1, visited))