#!/usr/bin/env zsh

function installAppOrbStack(){
    # --> Set Download URL
    if checkIfAppleSilicion; then
        # ...for ARM-based Apple Silicon Macs
        local downloadUrl="https://orbstack.dev/download/beta/latest/arm64"
    else
        # ...for Intel-based Macs / Universal (Fallback)
        local downloadUrl="https://orbstack.dev/download/beta/latest/amd64"
    fi
    # --> Download
    downloadFromUrl "$downloadUrl" "OrbStack.dmg"
    # --> Mount & copy
    # (Cannot use unmountFile() function due to Volume having a different name than the App)
    hdiutil attach "$downloadFolder/OrbStack.dmg" -quiet
    cp -R /Volumes/Install\ OrbStack\ v*/OrbStack.app "$downloadFolder"
    # --> Unmount & move
    hdiutil unmount /Volumes/Install\ OrbStack\ v* -force -quiet
    moveApplication "OrbStack.app"
}
export -f installAppOrbStack

function brewinstallAppOrbStack(){
    # --> Installation
    brew install orbstack
}
export -f brewinstallAppOrbStack
