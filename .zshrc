export SHELL_TYPE=zsh

# 设置支持的插件
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  autojump
  zsh-autosuggestions
  sublime
  vscode
  git-open
)
# 设置zsh的目录
ZSH=$HOME/.oh-my-zsh
# 设置zsh的主题
ZSH_THEME="robbyrussell"
# 执行zsh文件
source $ZSH/oh-my-zsh.sh

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**'
zstyle ':completion:*:*' ignored-patterns '*ORIG_HEAD'
zstyle ':completion:*:*' ignored-patterns 'origin/HEAD'

compinit -u
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000000
# End of lines configured by zsh-newuser-install
#

rm -rf .zcompdump*

# 启动自定义脚本
#source ~/.sys.config/common.sh
#source ~/.sys.config/dirmark/zsh.sh
source ~/.sys.bootstrap/config_alias.sh
source ~/.sys.bootstrap/terminal_proxy.sh

# 配置环境变量
export GOPATH=/usr/local/Cellar/go/1.10.3
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH="$HOME/.fastlane/bin:$PATH"

# 命令高亮插件相关配置
source /usr/local/Cellar/zsh-syntax-highlighting/0.6.0/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
bindkey ',' autosuggest-accept
# scmpuff 插件的配置和启动
eval "$(scmpuff init -s)"

