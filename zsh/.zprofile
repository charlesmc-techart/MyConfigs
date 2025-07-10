export EDITOR=vim
export VISUAL=code

export -TU PYTHONPATH pythonpath
# export -TU LD_LIBRARY_PATH ld_library_path

# NAMED DIRECTORIES ############################################################

MyFiles=~/MyFiles
if [[ -d ~MyFiles ]]; then
    hash -d MyFiles
    hash -d my_journals=~MyFiles/Documents/Journals
    hash -d shasta=~my_journals/63.72.75.73.68.65.73/ᜇᜓ\ ᜐ᜔ᜌᜊᜒᜉ
    hash -d my_configs=~MyFiles/Configs

    hash -d deanza="$MyFiles/De Anza College"

    pythonpath=(~my_configs $pythonpath)
else
    unset MyFiles
fi

lconfig=~/.config
if [[ -d ~lconfig ]]; then
    hash -d lconfig
else
    unset lconfig
fi

# PATHS ########################################################################

eval "$(/opt/homebrew/bin/brew shellenv)"

declare -U path

# Ruby
path=(/opt/homebrew/Cellar/ruby/3.4.3/bin $path)

# Personal Binaries
lbin=~/.local/bin
if [[ -d ~lbin ]]; then
    hash -d lbin
    path=(~lbin $path)
else
    unset lbin
fi
