#!/bin/sh

cc=clang;

dump() {
    echo -e "\n====================\n\t\t$1\n====================\n" >> test.log
    $cc test/test_$1.c &>> test.log
    ./a.out > sys.diff
    LD_PRELOAD=./libasm.so ./a.out > user.diff
    echo -e "$1\t=> \c"
    diff user.diff sys.diff &>> test.log;
    if [ $? -eq 0 ];then echo "OK";else echo "KO";fi
}

make re &> test.log
if [ $? -eq 2 ]; then echo "Makfile Error";cat test.log;exit 1;fi
# export LD_LIBRARY_PATH=$(pwd)

if [ -z $1 ]; then
    func=("memcpy" "memmove" "memset" "rindex" "strcasecmp" "strchr" "strcmp" "strcspn" "strlen" "strncmp" "strpbrk" "strstr")

    echo "===========GCC===========";
    cc=gcc;
    for elem in ${func[@]}; do
        dump $elem;
    done
    echo -e "\n==========CLANG=========="
    cc=clang;
    for elem in ${func[@]}; do
        dump $elem;
    done
else
    dump $1
fi
