import math

n, m, k = map(int, input().split())

temp = min(n//2, m) # 기준

r = (n-temp*2) + (m-temp) # 나머지

if k - r > 0:
    answer = temp - math.ceil((k-r)/3)
else:
    answer = temp

print(answer)