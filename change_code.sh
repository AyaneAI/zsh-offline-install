#!/bin/bash

if [ ! -n "$ZSH" ]; then
    ZSH=~/.oh-my-zsh
fi

# 定义函数，用于遍历文件夹下的所有文件
function traverse_folder() {
    for file in "$1"/*; do
        if [[ -d "$file" ]]; then
            # 如果是文件夹，则递归调用函数
            traverse_folder "$file"
        elif [[ -f "$file" ]]; then
            # 如果是普通文件，则使用dos2unix命令转换文件格式
            dos2unix "$file"
        fi
    done
}

# 调用函数，传入文件夹路径作为参数
traverse_folder "$ZSH"