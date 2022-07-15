n, k = map(int, input().split())
coins = []
for i in range(n):
    coins.append(int(input()))

coins.sort(reverse=True)

count = 0
for coin in coins:
    if coin <= k:
        count += k//coin
        k = k%coin
    if k == 0:
        break

print(count)