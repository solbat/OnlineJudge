n = int(input())
data = list(map(int, input().split()))

data.sort()

answer = 0
temp = 0
for val in data:
    temp += val
    answer += temp

print(answer)