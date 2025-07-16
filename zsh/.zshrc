# OPTIONS ######################################################################


setopt AUTOCD
setopt CDABLE_VARS
setopt CHASE_DOTS
setopt PUSHD_IGNORE_DUPS

setopt AUTO_LIST

setopt BAD_PATTERN
setopt EXTENDED_GLOB
setopt GLOB_STAR_SHORT

setopt HIST_ALLOW_CLOBBER
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FCNTL_LOCK
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY


# ALIASES ######################################################################


alias -g ...=../..
alias -g ....=../../..
alias -g .....=../../../..
alias -g ......=../../../../..

alias ls='ls -hp --color=auto'

alias ppath='echo "${PATH/:/\n}"'

alias exiftool='exiftool -P'


# FUNCTIONS ####################################################################


function ds_stores {
    dir=.
    [[ $1 && -d $1 ]] && dir=$1 && shift

    find ~dir -type f -name .DS_Store -print $@
}

function refresh {
    source ~my_configs/zsh/.zprofile ~my_configs/zsh/.zshrc
}

function brew_update {
    for cmd in update upgrade 'upgrade --cask' autoremove cleanup; do
        brew $=cmd
    done
}

function todo {
    echo "- $@" >> ~/Desktop/todo.txt
}


# PROMPT #######################################################################


source /opt/homebrew/opt/spaceship/spaceship.zsh
