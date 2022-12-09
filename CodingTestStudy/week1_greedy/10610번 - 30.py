n = input()
data = []
for v in n:
    data.append(v)

data.sort(reverse=True)

answer = ''
for v in data:
    answer += v

answer = int(answer)
if answer%30 == 0:
    print(answer)
else:
    print(-1)