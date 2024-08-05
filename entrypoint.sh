#!/bin/bash
args=($@) # 모든 스크립트 인수를 배열 args에 저장함, '$@'는 스크립트에 전달된 모든 인수(빈 인수 제외)
argcount="${#args[@]}" # 배열의 길이를 출력해서 argcount에 담음
echo "argcount=$argcount" >> $GITHUB_OUTPUT # argcount(인수개수)를 GITHUB_OUTPUT에 추가함

# #!는 shebang기호로 뒤에 나오는 경로에 있는 프로그램을 사용해 이 스크립트 사용하라는 지시
# 따라서 항상 bash셸을 사용하여(특정 셸 기능에 의존시 유용) 전달된 인수의 개수를 세라는 의미
# ex) ./count-arg.sh arg1 arg2 하면 2나옴
