# 判断是否安装了oh my zsh
function hasInstall_oh_my_zsh() {
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
       echo 'oh-my-zsh 没有安装, 自动安装中...'
       return 0
   else
       echo 'oh-my-zsh 已经安装了'
       return 1
   fi
}

hasInstall_oh_my_zsh 
if [ $? -gt 0 ]; then
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

fi 

if [ $? -eq 0 ]
then
#1. 安装diff辅助工具 https://github.com/jeffkaufman/icdiff
pip install git+https://github.com/jeffkaufman/icdiff.git
#2. 安装oh my zsh 插件 代码高亮插件 默认安装到oh my zsh的自定义插件目录，如果安装其他目录，则需要在~/.zshrc更改路径
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
yum install autojump-zsh
fi


