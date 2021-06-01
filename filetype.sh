#!/bin/sh

echo -n "파일/디렉토리 이름 입력 : "
read name

exist=`find -name $name`
filetype=`find -name $name -ls | awk '{print $3}' | cut -c 1`

if [ -z "$exist" ]
        then echo "$name은/는  존재하지 않습니다."
else
        case $filetype in
                -) echo "$name은/는  일반 파일입니다.";;
                d) echo "$name은/는  디렉토리 파일입니다.";;
                b) echo "$name은/는  블록 장치 파일입니다.";;
                c) echo "$name은/는  문자 장치 파일입니다.";;
                l) echo "$name은/는  심볼릭 링크 입니다.";;
        esac
fi
