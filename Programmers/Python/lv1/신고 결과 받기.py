# 코딩테스트 연습
# 2022 KAKAO BLIND RECRUITMENT
# 신고 결과 받기
# Lv. 1

def solution(id_list, report, k):
    # set으로 중복을 제거
    report = set(report)
    
    reportedNum = dict() # 신고를 받은 횟수
    reportWhom = dict() # 신고를 한 목록
    reportTF = dict() # 정지 여부
    
    # 딕셔너리 초기화
    for id in id_list:
        reportedNum[id] = 0
        reportWhom[id] = []
        reportTF[id] = False
    
    # 딕셔너리 입력
    for r in report:
        r1, r2 = r.split() # r1이 r2를 신고
        reportedNum[r2] += 1
        reportWhom[r1].append(r2)
    
    # 정지 여부 입력
    for id in reportedNum:
        if reportedNum[id] >= k:
            reportTF[id] = True
    
    answer = [0] * len(id_list)
    
    for i, id in enumerate(id_list):
        for reportedID in reportWhom[id]:
            if reportTF[reportedID]:
                answer[i] += 1
    
    return answer