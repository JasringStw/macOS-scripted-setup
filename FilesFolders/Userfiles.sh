#!/usr/bin/env zsh

# -- Userhome files --
# --> Create .zprofile ZSH Shell configuration file
function createUserFileZprofile(){
    local zprofilePath="$HOME/.zprofile"
    if ! checkIfFileExists $zprofilePath; then
        touch $zprofilePath
    fi
}
export -f createUserFileZprofile
