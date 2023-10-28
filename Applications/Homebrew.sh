#!/usr/bin/env zsh

# Homebrew installation
function installAppHomebrew(){
    if ! checkIfHomebrewInstalled; then
        # --> Check for Xcode CLT
        # (pre-requisite for Homebrew)
        if ! checkIfXcodeInstalled; then
            installAppXcodeCLT
        fi

        # --> Notify
        notify
        # --> Installation
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        # --> Configure Homebrew
        configureAppHomebrew
    fi
}
export -f installAppHomebrew

# Homebrew configurations
function configureAppHomebrew(){
    if checkIfHomebrewInstalled; then
        # --> Add Homebrew to User's PATH
        (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
        # --> Reload ZSH Shell config file
        source $HOME/.zprofile

        # --> Enable Homebrew's Auto-Update (requires LaunchAgents directory)
        mkdir -p "$HOME/Library/LaunchAgents"
        brew autoupdate start --upgrade
    fi
}
export -f configureAppHomebrew
