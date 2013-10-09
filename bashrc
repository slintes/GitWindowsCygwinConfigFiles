...

prompt_git() {
    git branch &>/dev/null || return 1
    HEAD="$(git symbolic-ref HEAD 2>/dev/null)"
    BRANCH="${HEAD##*/}"
    printf '%s' "${BRANCH:-unknown}"
}

prompt_all() {
    # prompt_git || prompt_svn || prompt_hg
    prompt_git
}

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\] \[\e[34;1m\]$(prompt_all)\[\e[0m\]\n\$ '

source /etc/bash_completion.d/git
export LANG=de_DE
export LC_ALL=de_DE
export TERM=cygwin
export DISPLAY=:0.0

proxy=http://localhost:3128
export http_proxy=$proxy
export HTTP_PROXY=$proxy
