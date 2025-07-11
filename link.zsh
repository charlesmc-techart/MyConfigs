readonly LIBRARY_DIR=~/Library
readonly APP_SUPPORT_DIR="${LIBRARY_DIR}/Application Support"

alias hardlink='install -v -l h'

alias symlink='install -v -l as'

function symlink_home {
    symlink $1 ~
}

function symlink_config {
    dir=~/.config
    [[ $2 ]] && dir+=/$2 && mkdir ~dir 2>/dev/null

    symlink $1 ~dir
}
