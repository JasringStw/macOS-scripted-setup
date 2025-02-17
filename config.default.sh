#!/usr/bin/env zsh

# -----------------------------------------------
#                  INSTRUCTIONS
#                      ---
#  Copy this file as a "config.sh" and set your
#  preferences for the options using "true" or "false"
#  (if there is no config.sh, the default file is used)
#
#
#               TABLE OF CONTENTS
#                      ---
#  1. macOS System Services
#   |- 1.1 Security
#   |- 1.2 Time Machine
#   |- 1.3 AirDrop
#   |_ 1.4 System Updates
#   |_ 1.5 Performance
#   |_ 1.6 System boot
#
#  2. Applications
#   |- 2.1 Remove Applications
#   |- 2.2 Required Apps
#   |- 2.3 Finder Extensions
#   |- 2.4 Application installations
#   |_ 2.5 Web Development Suite
#   |_ 2.6 Mac Gaming
#
#  3. User Settings
#   |- 3.1 Layout / User Interface
#   |- 3.2 Finder
#   |- 3.3 Dock
#   |- 3.4 User Home
#   |- 3.5 Terminal
#   |_ 3.6 Application Hardening
#

# ------------------------------
#     1. macOS System Services
# ------------------------------
# -- 1.1 Security --
useFileVault=true
enableFirewall=true
disableShutdownRestartInLogin=true
enableScreensaverPassword=true

# -- 1.2 Time Machine --
speedupTimemachine=true

# -- 1.3 AirDrop --
enableWiredAirDrop=true

# -- 1.4 Check and install System updates --
installSystemUpdates=true

# -- 1.5 Performance settings --
betterApplicationPerformance=true

# -- 1.6 System boot up --
playMacStartupSound=true


# ------------------------------
#     2. Applications
# ------------------------------
# -- 2.1 Remove pre-installed Apps --
removeGarageband=false
removeiMovie=false

# -- 2.2 Required Applications --
# (others have dependencies for these)
installXcodeTools=false
installHomebrew=true
installAppStoreApps=true # <-- requires Homebrew=TRUE
installRosetta=false

# -- 2.3 Install Finder Extensions --
installKeka=true
installSyntaxHighlightQuickLook=true

# -- 2.4 Install Applications --
install1Password=false
installAdGuardSafari=true
installAlDente=false # <-- only supported on MacBooks (MBA, MBP)
installBeyondCompare=false
installBraveBrowser=false
installDiscord=false
installEqMac=false
installFigma=false
installFirefox=false
installGoogleChrome=false
installGrandPerspective=false
installLinearMouse=false
installMacsFanControl=false
installMicrosoftOffice=false
installNova=false
installOverSight=true
installPixelmator=false
installSpotify=false
installStrongbox=false
installTelegram=false
installTransmission=false
installTresorit=false
installVisualStudioCode=false
installVLC=false
installWarp=false
installXnapper=false

# -- 2.5 Web Development Suite --
installWebdevTools=false # <-- When FALSE then all below steps are SKIPPED
installGit=false
gitUsername='' # <-- Name to use with Git
gitUseremail='' # <-- Email to use with Git
installBoop=false
installComposer=false # <-- will also install PHP
installDocker=false # <-- only installed when MAMP=FALSE
useOrbStackOverDocker=false # <-- use OrbStack instead of Docker
installFork=false
installGasMask=false
installMAMP=false
installSequelAce=false
installSonarQube=false # <-- only installed when Docker=TRUE

# -- 2.6 Mac Gaming Apps and Games --
installHeroicGamesLauncher=false
installSteam=false
installWhisky=false

# ------------------------------
#     3. User and App Settings
# ------------------------------
# -- 3.1 macOS Layout / User Interface --
# ---- 3.1.1 Menu Bar ----
dateTimeInMenubar=true
enableFastUserswitching=true
useMissionControl=true
disableTransparency=true
showBatteryPercentage=true # <-- only applied on MacBooks (MBA, MBP)
# ---- 3.1.2 Window handling ----
enableFullDraggableWindows=false
showScrollbars=true
# ---- 3.1.3 Text handling ----
disableAnnoyingTextcorrections=true
# ---- 3.1.4 Keyboard & Mouse ----
disableNaturalScrolling=true
enableTrackpadClicks=true # <-- only applied on MacBooks (MBA, MBP)
fasterMouseCursor=true
fnKeyFunction='emoji' # Modes: off=Do nothing, emoji=Emojis & Symbols, language=Input sources, dictation=Start Dictation
# ---- 3.1.5 Apple Apps ----
useRealNamesForContacts=true
showMusicNextSongPlaying=false
showSubjectInMessagesApp=false

# -- 3.2 macOS Finder customizations --
customizeFinder=true # <-- If false, below settings will have NO effect
useScreenshotsFormat='png' # Supported formats: bmp, gif, heic, jpg, jp2, tif, pict, pdf, png, tga, tiff
useScreenshotsNumericFilename=false

# -- 3.3 macOS Dock optimizations --
speedupDock=true
beautifyDock=true
minimalDock=false

# -- 3.4 User Home folder --
showLibraryFolder=true
addUserApplicationsFolder=true
addUserWebsitesFolder=true
# ---- 3.4.1 «Games» folder ----
addUserGamesFolder=true
useCustomGamesFolderIcon=true # <-- Requires Games Folder (addUserGamesFolder=TRUE)
useCustomGamesFolderIconURL='https://swissmacuser.ch/wp-content/uploads/2021/06/Games-Folder-Icon-macOS-12-Monterey-detailed.png'
# ---- 3.4.2 Wallpapers (Desktop Pictures) ----
downloadWallpapers=true # <-- Required to download any Wallpapers
dynamicWallpaperExodus=false
dynamicWallpaperFuji=false
dynamicWallpaperISS=false

# -- 3.5 Terminal app settings --
enableTerminalUtf8=true
useCustomTerminalTheme=false # <-- Requires the URL from next line to download .terminal Theme file
useCustomTerminalThemeURL='https://gist.githubusercontent.com/oliveratgithub/c9dde424966a7b9b5b7e9d1c28bf8f2e/raw/'
useCustomTerminalConfigurations=false # If true, a URL is required to download and apply .zhsrc commands
useCustomTerminalConfigurationsURL=''

# -- 3.6 Application Hardening --
secureSafariBrowser=true
removeTrashbinItemsPeriodically=true # Auto-remove items from Trash after 30 days
