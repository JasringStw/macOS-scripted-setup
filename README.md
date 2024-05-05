Automate your macOS setup
===

**Welcome to the macOS Scripted Setup.<br>This project helps Mac users quickly and easily set up a new computer or useraccount by automatically configuring a range of system settings and installing commonly used applications.**

> [!TIP]
> The scripted setup was tested on Intel-based Macs & Apple Silicon Macs
> On macOS 12 Monterey up to macOS 14 Sonoma


## What is this?

The macOS Scripted Setup is **perfect for users who want to save time and avoid the hassle of manually changing settings and installing apps**. The whole project, but particularly the configuration file, is **portable** - so you can keep them on a USB-stick for the next Mac setup. Give it a try and streamline your new Mac setup process!

![Screenshot of macOS Scripted Setup in action](/README_demo.png?raw=true)

The script is easy to use and can be run directly from the Terminal application, as a regular user or admin user. It automatically performs a series of commands to change default macOS settings and download applications. It's designed to be widely backward and forward compatible with various macOS versions.

**All settings can be configured.** Some features include enabling the firewall, setting better security features, customising the Finder, Dock, and Mission Control for better productivity; and many more. Additionally, the script installs applications such as browsers, media players, productivity apps, and web development tools.

### What is being done exactly?

<details>
<summary>See what features, settings, and applications can be changed / installed</summary>

### The script can change the following settings:

* FileVault, macOS Firewall, Mission Control, Control Centre, Finder, Dock, git, SSH Key, adds Userhome folders, Menu bar clock, Fast User Switching, and [more](https://github.com/Swiss-Mac-User/macOS-scripted-setup/tree/installer/Usersettings).

### …and is capable of installing these Apps:

Some Apps are downloaded from the official websites, other are added through Homebrew or its Mac App Store CLI extension.

* 1Password, AlDente, Beyond Compare, Boop, Brave, Composer, Discord, Docker, eqMac, Fig, Firefox, Fork, GasMask, Git, Google Chrome, Homebrew, Keka, LinearMouse, MAMP, Nova, Pixelmator Pro, Quick Look plugins, Rosetta 2, Safari extensions, Sequel Ace, SonarQube, Spotify, Steam, Strongbox, Telegram, Transmission, Tresorit, Warp, Xcode Command Line Tools, Xnapper, and [more](https://github.com/Swiss-Mac-User/macOS-scripted-setup/tree/installer/Applications).
</details>


## How to use

### 📥 Download macOS Scripted Setup

Automatic download with this command in the `Terminal.app` from Applications » Utilities:

```bash
curl -SL "https://github.com/Swiss-Mac-User/macOS-scripted-setup/archive/refs/heads/installer.zip" | tar xz -C "$HOME/Downloads" && open "$HOME/Downloads/macOS-scripted-setup-installer"
```

→ Alternatively you can manually download & extract the latest «Source code (zip)» [from Releases](/../../releases) to your `~/Downloads/` folder.

### ⚙️ Configure your preferences

1. Duplicate the file `config.default.sh` as `config.sh`

2. Open `config.sh` in a Text editor (e.g. `TextEdit.app`)

3. …and change all settings to your personal preferences, using `true`/`false`.

> [!WARNING]
> If no `config.sh`-file is present, the setup will use the default configs from `config.default.sh`!</sup>

#### Advanced settings
<details>
<summary>Configuring custom bash commands to run</summary>

If you want to run additional bash commands as part of the setup, you can duplicate the template-file `mycommands.template.sh` as `mycommands.sh`, and populate it with any commands. These custom commands will be executed LAST in the whole setup (see the `run.sh` file).

</details>


### 🚀 Start the scripted Setup

Maybe now is the time to [grab a coffee ☕️](https://bmc.link/swissmacuser/)…

1. Open the «Terminal.app» from Applications » Utilities

2. Paste the following command to the Terminal.app:

```bash
cd ~/Downloads/macOS-scripted-setup-installer/ && chmod +x ./run.sh && ./run.sh
```

3. Now start the setup by pressing `Return` &  watch the magic happen…

> [!TIP]
> **Occasionally you have to interact** when instructions show up, such as to sign-in on the Mac App Store.

#### ✨ That's it - happy installation! :)


## Requests for changes

### Issues and feature requests
Report an [Issue](/../../issues) or start a [new Discussion](/../../discussions) for feedback or help.

### Contributions
Feel free to [fork this project](/../../fork) and add Pull Requests for any suggested changes or additions!


---

<p align="center"><a href="https://bmc.link/swissmacuser/">
    <img src="https://cdn.buymeacoffee.com/buttons/default-yellow.png" alt="Support this project with a Coffee." height="40" width="172">
</a></p>

### Inspiration and Kudos

A **BIG «THANK YOU»** to these inspiring and helfpful sources! 🫶 Make sure to check them out and leave a kudos.

* Yann Bertrand's awesome work with «[macOS-defaults](https://github.com/yannbertrand/macos-defaults)»
* Patrick Force's approach with «[macOSa](https://github.com/rockholla/macosa)» (which was a bit too complex for my use case…)
* Ryan Pavlick's helpful «[add_to_dock](https://github.com/ryanpavlick/add_to_dock)» bash scripts
* Mathias Bynens's epic «[dotfiles](https://github.com/mathiasbynens/dotfiles)» (particularly its [.macos](https://github.com/mathiasbynens/dotfiles/blob/main/.macos))!
* Big KUDOS to «[Homebrew](https://github.com/Homebrew/install)» and the «[Mac App Store command line interface](https://github.com/mas-cli/mas)»! 👏
* MacRumors «[Dock to Show Running Apps Only](https://www.macrumors.com/how-to/macos-dock-show-active-apps/)», Ask Different «[identify if Filevault is enabled](https://apple.stackexchange.com/q/70969/86244)» and «[Check if OS X user is Administrator](https://apple.stackexchange.com/a/179531/86244)»
