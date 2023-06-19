#!/bin/bash

# 环境准备
echo "============= 环境准备 Start ============"

yum install -y git
yum install -y zsh

echo "============= 环境准备 End ============"

# 移动文件
echo "============= 移动文件 Start ============"
mv ohmyzsh ~/.oh-my-zsh
mv install-oh-my-zsh.sh ~/.oh-my-zsh

echo "============= 环境准备 End ============"

# 插件移动
echo "============= 插件移动 Start ============"
mv zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
mv zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "============= 插件移动 End ============"

# 编码修改
echo "============= 编码修改 Start ============"
chmod +x change_code.sh
sh change_code.sh

echo "============= 编码修改 End ============"

# 安装oh-my-zsh
echo "============= 安装oh-my-zsh Start ============"
chmod +x ~/.oh-my-zsh/install-oh-my-zsh.sh
sh ~/.oh-my-zsh/install-oh-my-zsh.sh

echo "============= 安装oh-my-zsh End ============"

# 编码修改
echo "============= 编码修改 Start ============"
./change_code.sh

echo "============= 编码修改 End ============"

# 重新载入zsh配置
echo "============= 重新载入zsh配置 Start ============"
source ~/.zshrc

echo "============= 重新载入zsh配置 End ============"