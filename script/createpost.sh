#!/bin/bash
# 这个脚本用于生成新的博客页面
# 使用交互式编程方式吧
# 如果运行脚本时提供了root这一参数，将会在content的根目录下生成相应的Rmd文件
if [ $# -eq 1 ] && [ $1=="root" ]; then
    rootflag=yes
else
    rootflag=no
fi

# 读取相应的变量
echo "该脚本将会按照一定的步骤生成博客模板！"
read -p "请输入博客文章的标题：" title
read -p "请输入自定义的固定链接：" slug

read -p "请输入博客类别（使用空格隔开）：" categories
read -p "请输入博客标签（使用空格隔开）：" tags

Rscript newpost.R "$rootflag" "$title" "$slug" "$categories" "$tags"
exit 0
