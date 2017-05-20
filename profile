alias emacs='LC_CTYPE=zh_CN.UTF-8 emacs'
alias em='emacsclient -t -a ""'  #在终端中开启emacs
alias emc='LC_CTYPE=zh_CN.UTF-8 emacsclient -nc -a ""'  #启动emacs图形界面
alias suem='sudo emacsclient -t -a ""'  #在终端中开启emacs
alias suemc='sudo LC_CTYPE=zh_CN.UTF-8 emacsclient -nc -a ""'  #启动emacs图形界面

if [ -n "$DISPLAY" ]; then
    export BROWSER=firefox
else
    export BROWSER=links
fi

export PATH=~/.cabal/bin:$PATH
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

export GEM_HOME=$(ruby -e 'print Gem.user_dir')

