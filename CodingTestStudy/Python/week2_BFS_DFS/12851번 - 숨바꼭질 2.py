from collections import deque
import sys

input = sys.stdin.readline
INF = int(1e9)

n, k = map(int, input().split())
visited = [False] * 100001

def bfs(start):
    mintime = INF # 동생을 찾는 시간
    num_cases = 0 # 동생을 찾는 방법의 수
    
    queue = deque()
    queue.append((start, 0)) # (위치, 걸린 시간)
    
    while queue:
        x, time = queue.popleft()
        visited[x] = True # pop 이후 방문처리

        if x == k: # 동생을 찾았을 때
            if time < mintime: # 더 짧은 시간에 찾았을 때 갱신
                mintime = time
                num_cases = 1
            elif time == mintime: # 같은 시간일 때 경우의 수 늘리기
                num_cases += 1
        
        for i in [x-1, x+1, x*2]: # x+1과 x*2가 같을 수도 있기 때문에 pop 이후 방문처리
            if i >= 0 and i <= 100000 and not visited[i]:
                queue.append((i, time+1))
    
    return mintime, num_cases

mintime, num_cases = bfs(n)
print(mintime)
print(num_cases)