A=int(input())
B=int(input())
C=int(input())
D=A*B*C
E=str(D)
F=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
for i in range(len(E)):
    F[int(E[i])] += 1

for i in range(10):
    print(F[i])