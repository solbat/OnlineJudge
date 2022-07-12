import sys
input = sys.stdin.readline

t = int(input())

testcases = []
answer = []
for i in range(t):
    n = int(input())
    answer.append([1]*n)

    testcase = []
    for j in range(n):
        a, b = map(int, input().split())
        testcase.append((a, b))
    testcases.append(testcase)

for i in range(t):
    for candidate in testcases[i]:
        for j in range(len(testcases[i])):
            if answer[i][j] == 1:
                if candidate[0] < testcases[i][j][0] and candidate[1] < testcases[i][j][1]:
                    answer[i][j] = 0

for i in range(t):
    print(sum(answer[i]))