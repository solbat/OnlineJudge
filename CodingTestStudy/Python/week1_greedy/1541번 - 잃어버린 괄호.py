expression = input() # 수식 입력받기
data1 = expression.split('-') # - 기준으로 나누어
# data = list(map(eval, data)) # 각 원소를 계산
# SyntaxError: leading zeros in decimal integer literals are not permitted
data2 = [] # 각 원소를 계산한 값을 담는 리스트
for exp in data1:
    data2.append(sum(list(map(int, exp.split('+')))))

if len(data2) == 1: # -가 없는 경우
    answer = data2[0]
else: # 그 외의 경우
    answer = data2[0] - sum(data2[1:])

print(answer)
