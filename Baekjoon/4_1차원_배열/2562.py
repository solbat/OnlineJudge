# l=[]
# for x in range(9):
#     l.append(int(input()))
# print(a:=max(l),l.index(a)+1, sep='\n')

print(*max((int(input()),i+1)for i in range(9)))