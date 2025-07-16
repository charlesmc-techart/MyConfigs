export EDITOR=vim
export VISUAL=code

export -TU PYTHONPATH pythonpath
# export -TU LD_LIBRARY_PATH ld_library_path

# NAMED DIRECTORIES ############################################################

MyFiles=~/MyFiles
if [[ -d ~MyFiles ]]; then
    hash -d MyFiles

    declare -aU directories
    readonly directories=(3D Configs Documents Pictures Programming Wiki Work)
    for dir in $=directories; do
        hash -d My${dir}=~MyFiles/$dir
    done

    hash -d MyJournals=~MyFiles/Documents/Journals
    hash -d MyShasta=~MyJournals/63.72.75.73.68.65.73/'ᜇᜓ ᜐ᜔ᜌᜊᜒᜉ'

    for dir in Art Photos Screenshots; do
        hash -d My${dir}=~MyPictures/$dir
    done

    hash -d DeAnza=~MyFiles/'De Anza College'

    pythonpath=(~MyProgramming/bin ~MyProgramming ~MyConfigs $=pythonpath)
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

declare -aU path

# Ruby
path=(/opt/homebrew/Cellar/ruby/3.4.3/bin $=path)

# Personal Binaries
lbin=~/.local/bin
if [[ -d ~lbin ]]; then
    hash -d lbin
    path=(~lbin $=path)
else
    unset lbin
fi
