#!/usr/bin/env zsh

function installAppFigma(){
    # --> Download
    downloadFromUrl "https://www.figma.com/download/desktop/mac" "Figma.dmg"
    # --> Mount & move
    unmountFile "Figma.dmg" "Figma"
    moveApplication "Figma.app"
}
export -f installAppFigma
