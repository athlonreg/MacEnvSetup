#!/bin/bash

# 一键部署配置Mac shell相关插件与美化

# 安装homebrew
echo "安装homebrew"
cd
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 安装wget
echo "安装wget"
brew install wget

# 安装vim编辑器
echo "安装vim编辑器"
brew install vim

# 安装svn
echo "安装svn"
brew install svn

# 安装nodejs
echo "安装nodejs"
brew install node

# 安装node包管理器npm
echo "安装node包管理器npm"
brew install npm

# 安装nginx服务器
echo "安装nginx服务器"
brew install nginx

# 设置nginx服务器自启动
echo "设置nginx服务器自启动"
ln -sfv /usr/local/opt/nginx/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

# 安装git
echo "安装git"
brew install git

# 安装iTerm2
echo "安装iTerm2"
brew cask install iTerm2

# 安装oh-my-zsh
echo "安装oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

# 进入tmux开始使用
tmux 
echo "欢迎使用tmux"
