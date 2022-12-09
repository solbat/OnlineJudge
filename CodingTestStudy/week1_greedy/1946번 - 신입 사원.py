########## 비효율적인 방식 (시간초과) ##########
# import sys
# input = sys.stdin.readline

# t = int(input())

# testcases = []
# answer = []
# for i in range(t):
#     n = int(input())
#     answer.append([1]*n)

#     testcase = []
#     for j in range(n):
#         a, b = map(int, input().split())
#         testcase.append((a, b))
#     testcases.append(testcase)

# for i in range(t):
#     for candidate in testcases[i]:
#         for j in range(len(testcases[i])):
#             if answer[i][j] == 1:
#                 if candidate[0] < testcases[i][j][0] and candidate[1] < testcases[i][j][1]:
#                     answer[i][j] = 0

# for i in range(t):
#     print(sum(answer[i]))

########################################

import sys
input = sys.stdin.readline

num_testcase = int(input())
data = []
for i in range(num_testcase):
    num_candidate = int(input())
    temp = []
    for j in range(num_candidate):
        s1, s2 = map(int, input().split())
        temp.append((s1, s2))
    temp.sort(key = lambda x: x[0])
    data.append(temp)

answer = []
for testcase in data:
    temp = testcase[0][1]
    count = 0
    for candidate in testcase:
        if candidate[1] > temp:
            continue
        else:
            count += 1
            temp = candidate[1]
    answer.append(count)

for val in answer:
    print(val)