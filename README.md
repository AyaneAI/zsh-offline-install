本项目提供了一键部署zsh及其常用插件的方法

# 脚本适用环境
CentOS
可根据自己的系统修改**zsh_offline_install.sh**

# 使用方法
1. 脚本文件添加执行权限
```
chmod +x zsh_install.sh
```
2. 执行脚本文件
```
./zsh_install.sh
```
3. 如果需要更新**zsh-autosuggestions**或者**zsh-syntax-highlighting**，可以到对应的插件目录下通过`git pull`更新插件
```
cd ~/.oh-my-zsh/custom/plugins
cd zsh-autosuggestions
git pull
```

# 相关项目地址
- oh-my-zsh：https://github.com/ohmyzsh/ohmyzsh
- zsh-autosuggestions：https://github.com/zsh-users/zsh-autosuggestions
- zsh-syntax-highlighting：https://github.com/zsh-users/zsh-syntax-highlighting
- install-oh-my-zsh.sh：https://m24y.com/index.php/2021/11/24/oh-my-zsh/
