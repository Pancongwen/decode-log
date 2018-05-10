#!/bin/bash

Project_dir=`cd $(dirname $0);pwd`

function Usage() {
    echo "Usage: $0 <dirname> "
    exit 0
}

function Parameter_judge() {
    correct_num="$1"
    real_num="$2"
    if [ $correct_num != $real_num ];then
        Usage
    fi
}

function decode() {
log_dir="$1"

for f in `ls $log_dir`
do
    secret_code=${f:0:(-18)}
    origin_code=`$Project_dir/convert_str.py $secret_code -49`

    mv $log_dir/$f $log_dir/$origin_code${f:(-18)} 
done

ls $log_dir | sort
}

Parameter_judge 1 $#
decode $1
