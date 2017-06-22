#!/usr/bin/env bash

number=100
list=$(eval echo {1..$number})
#echo $list
for n in $list
do
    username=user$n
    password=$(mkpasswd -l 10 -s 2)
    echo "$username: $password" >> password.txt
done
echo "Finish !"
