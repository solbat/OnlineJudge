# N=int(input())
# for i in range(N):
#     for p in range(N-i-1):
#         print(" ", end="")
#     for q in range(i+1):
#         print("*", end="")
#     print("")

i=int(input())
j=1
exec('print(" "*(i-j)+"*"*j);j+=1;'*i)