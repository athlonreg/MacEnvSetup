#!/bin/bash

# 设置zsh为你的默认shell
echo "设置zsh为你的默认shell"
chsh -s /bin/zsh

# 安装tmux
echo "安装tmux"
brew install tmux

# 使用gpakoz的tmux配置
echo "使用gpakoz的tmux配置"
cd ; rm -rf .tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
