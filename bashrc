# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      . /etc/bash_completion
fi

# . /usr/local/Cellar/git/2.0.3/etc/bash_completion.d/git-prompt.sh
. /etc/bash_completion.d/git-prompt

export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='\n\[\033[0;33m\][\[\033[0m\]\[\033[0;36m\]\u\[\033[0m\]@\[\033[1;35m\]\h: \[\033[0;31m\]\w\[\033[0;35m\]$(__git_ps1 " (%s)")\[\033[0;33m\]]\n\[\033[0;34m\]\$\[\033[0m\] '

if [ "$INSIDE_EMACS" ]
then
    export PROMPT_COMMAND=
else
    #export PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 12 ]; then CurDir=${DIR:0:5}...${DIR:${#DIR}-7}; else CurDir=$DIR; fi;echo -ne "\033]0;${CurDir}\007"'
    export PROMPT_COMMAND='CurDir=`pwd | sed -e "s!$HOME!~!" | xargs basename`; echo -ne "\033]0;${CurDir}\007"'
fi

umask 022

alias ls='ls --color -h'
alias l='ls --color -h'

alias df='df -h'
alias du='du -h'
alias grep='grep --color -n'
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'
alias R='TERM=xterm-256color R'

# alias gv='gvim'
alias tt='tig --topo-order'
alias t='tig --all --topo-order'

#alias ipython='ipython --no-autoindent'

# increase file limit for gpinitsystem
# ulimit -n 65536

#export LD_LIBRARY_PATH="/data/hai/local/lib:$LD_LIBRARY_PATH"

export GOPATH=$HOME/golang

#export PATH="$HOME/.local/bin:$HOME/.rvm/bin:/Users/qianh1/.rvm/gems/ruby-2.1.1/bin:/Users/qianh1/.rvm/gems/ruby-2.1.1@global/bin:/Users/qianh1/.rvm/rubies/ruby-2.1.1/bin:/usr/local/texlive/2013/bin/x86_64-darwin:/opt/local/libexec/gnubin/:/opt/local/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH:/usr/local/bin:/opt/local/libexec/perl5.12/sitebin:$HOME/mysql/local/bin:$GOPATH/bin"

export PATH=$HOME/.local/bin:$GOPATH/bin:$PATH
# export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

# export PAGER=vimpager
# alias less=$PAGER
# alias zless=$PAGER

alias less='less -R'
export PAGER='less -R'

#export PYTHONPATH=/data/hai/local/lib/python2.7
#export PYTHONHOME=/data/hai/local
#export LD_LIBRARY_PATH=/data/hai/local/lib/python2.7:$LD_LIBRARY_PATH

export P4CONFIG=.p4config
export P4DIFF=mydiff
export P4EDITOR=vim

#export GRADLE_HOME=$HOME/.local/gradle

# Cascading Lingual - Concurrent, Inc.
# http://cascading.org/lingual

#export LINGUAL_HOME=/Users/qianh1/.lingual-client

# add lingual tool to PATH
#export PATH=$PATH:$LINGUAL_HOME/bin




#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# tmux needs it
export TERM=xterm-256color-italic

# Docker
# export DOCKER_HOST=tcp://192.168.59.103:2375
#
# export HOMEBREW_GITHUB_API_TOKEN=01900d0c0698e8ea9f2029c73fd0151d8f41c8ef


# source ~/.fzf.bash

# . /usr/local/Cellar/git/2.0.3/etc/bash_completion.d/git-completion.bash
# . /usr/local/Cellar/bash-completion/1.3/etc/profile.d/bash_completion.sh

alias p='ipython'

# ------------------------------------------------------------
# ranklab related alias

alias rl='/google/data/ro/projects/quality/ranklab/tools/iranklab.par'

pf() {
  /google/data/ro/projects/quality/ranklab/tools/print_flatfile ${1} | less
}

# update-display() {
#   good_display=$(netstat -an | /bin/grep 0\ [0-9,:,.]*:60..\  | awk '{print $4}' | tail -n 1)
#   good_display=${good_display: -2}
#   export DISPLAY=localhost:${good_display}.0
# }

function tmux() 
{
  local tmux=$(type -fp tmux)
  case "$1" in
    update-environment|update-env|env-update)
      local v
      while read v; do
        if [[ $v == -* ]]; then
          unset ${v/#-/}
        else
          # Add quotes around the argument
          v=${v/=/=\"}
          v=${v/%/\"}
          eval export $v
        fi
      done < <(tmux show-environment)
      ;;
    *)
      $tmux "$@"
      ;;
  esac
}

alias web='glogin && googlenetworkaccess'
alias prod='prodaccess'

alias vpact='. ~/vPy/bin/activate'
alias deact='deactivate'

alias sl='/usr/games/sl'
