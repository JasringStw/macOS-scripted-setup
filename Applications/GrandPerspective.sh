#!/usr/bin/env zsh

function installAppGrandPerspective(){
    # --> Version
    local version="3.4.2"
    # --> Download
    local downloadFromUrl "https://downloads.sourceforge.net/project/grandperspectiv/grandperspective/$version/GrandPerspective-3_4_2.dmg?ts=gAAAAABlBrA5VHhuRY9rcLD3hJgR2C3IQciYRJgp5UlHW-BBkHMzhcBWavFsEdHTYCFyKnHWoc_COkxXYhEn37gEWywXjkMo0w%3D%3D" "GrandPerspective.dmg"
    # --> Mount & copy
    # (Cannot use unmountFile() function due to Volume having a different name than the App)
    hdiutil attach "$downloadFolder/GrandPerspective.dmg" -quiet
    cp -R "/Volumes/GrandPerspective $version/GrandPerspective.app" "$downloadFolder"
    # --> Unmount & move
    hdiutil unmount "/Volumes/GrandPerspective $version" -force -quiet
    moveApplication "GrandPerspective.app"
}
export -f installAppGrandPerspective
