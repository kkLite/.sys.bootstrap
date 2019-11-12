function hasInstall_oh_my_zsh() {
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        echo 'oh-my-zsh 没有安装'
    else
        echo 'oh-my-zsh 已经安装了'
    fi
}
hasInstall_oh_my_zsh
if [ $? -gt 0 ]
then 
    echo 'haha'
else
    echo 'oooo'
fi 
