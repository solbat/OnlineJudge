files_num = int(input())
files_name = []
file_search = ""

for i in range(files_num):
    files_name.append(input())

for i in range(len(files_name[0])):
    for j in range(files_num):
        if len(file_search) < i+1:
            file_search += files_name[0][i]
        if file_search[i] != files_name[j][i]:
            file_search = file_search[:i]+'?'
            break

print(file_search)