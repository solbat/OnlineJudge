# Activity Selection Problem

n = int(input())

schedule = []
for i in range(n):
    time = list(map(int, input().split()))
    schedule.append((time[0], time[1]))

# (9, 10), (10, 10) 일 때 둘 다 카운트 하기 위해 오름차순으로 우선 정렬
schedule.sort(key=lambda x:x[0]) 
schedule.sort(key=lambda x:x[1])

count = 1
val = schedule[0][1]

for i in range(1, len(schedule)):
    if schedule[i][0] >= val:
        count += 1
        val = schedule[i][1]

print(count)