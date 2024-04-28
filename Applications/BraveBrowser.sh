#!/usr/bin/env zsh

function installAppBraveBrowser(){
        # --> Download
        downloadFromUrl "https://laptop-updates.brave.com/latest/osx" "Brave.dmg"
        local downloadFolder="$HOME/Downloads/"
        downloadFromUrl "$downloadUrl" "Brave.dmg"
        # --> Mount & move
        unmountFile "Brave.dmg" "Brave Browser"
        moveApplication "Brave Browser.app"
    fi
}
export -f installAppBraveBrowser
