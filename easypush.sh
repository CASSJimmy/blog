#!/bin/bash
# 脚本的第一个参数放进commit -m
Rscript server.R
if [ $# -ne 1 ]; then
    echo "请输入一串字符串作为参数！"
else
    message=$1
    git add .
    git commit -m "$message"
    git push
fi
