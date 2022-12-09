def calcDay(data):
    l, p, v = data
    return (v//p)*l + min(v%p, l)

cases = []

while True:
    l, p, v = map(int, input().split())
    if l == 0 and p == 0 and v == 0:
        break
    else:
        cases.append((l, p, v))

for i, test in enumerate(cases):
    print(f'Case {i+1}: {calcDay(test)}')
