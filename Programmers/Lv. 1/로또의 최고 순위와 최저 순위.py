def ranking(num):
    if num >= 2 and num <= 6:
        return 7-num
    else:
        return 6

def solution(lottos, win_nums):
    zeros = 0
    for n in lottos:
        if n == 0:
            zeros += 1
    
    minNum = len(set(lottos) & set(win_nums))
    
    answer = list(map(ranking, [minNum+zeros, minNum]))
    return answer