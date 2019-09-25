# 开启代理
function proxy_on(){
	export ALL_PROXY=socks5://127.0.0.1:1086
	export http_PROXY=socks5://127.0.0.1:1086
	export https_PROXY=socks5://127.0.0.1:1086
    echo -e "已开启代理"
}

# 关闭代理
function proxy_off(){
	unset ALL_PROXY
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}
# 默认关闭代理
proxy_off

