# dotfiles

All of my configurations for Linux

## Requirements

Packages that are required to make this run successfully

| Package name                                 |
| -------------------------------------------- |
| `git`                                        |
| `zsh`                                        |
| `fzf`                                        |
| `neovim`                                     |
| `stow`                                       |
| Some [Nerd font](https://www.nerdfonts.com/) |

### Additional software _(optional)_

| Package name | Description                         |
| ------------ | ----------------------------------- |
| `ghostty`    | Terminal emulator                   |
| `yazi`       | File manager tool for your terminal |

## Installation

1. Clone this repository to subfolder of your home directory (`~/.dotfiles` for example)
   - `git clone https://github.com/cyprich/dotfiles.git ~/.dotfiles/`
   - `cd ~/.dotfiles/`
2. Start script, which will guide you through installation
   - `./use.sh`

> Note: You have to clone this repository in subfolder of your home directory
> Note: Folders and files starting with `.` are hidden

### Nerd font

[Nerd font](https://www.nerdfonts.com/#home) is looks just like a regular font, but packed with lots of glyphs (icons)  
It's used to make your terminal look better with icons and other symbols

Technically, you don't, but it's highly recommended  
Your terminal will _work_ the same, but it will _look_ a lot worse than it would with Nerd font

#### How to use Nerd font?

> Note: You can download nerd font with `pacman` (if your distro uses it) and skip to step 5

1. Download desired font from [www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)
2. Extract downloaded file (`unzip -d <filename>`)
3. Move extracted files to folder containing fonts
   - If you want to install it just for you, the folder is `~/.fonts`
   - If you want to install it globally, the folder is `/usr/share/fonts/` (requires sudo privileges)
4. Rebuild the font cache
   - `fc-cache -fv`
5. Make your terminal application use your newly installed font
   - This might be different depending on the application you use
   - If you don't see your new font here, and you are sure you installed it correctly, try to restart your terminal application

## Features

What does this configuration offer?

- Syntax Highlighting
- Autosuggestions
- Better Key Shortcuts
  - `ctrl + left arrow` to go forward whole word
  - `ctrl + right arrow` to go backward whole word
  - `ctrl + backspace` delete whole word (to the right side of cursor)
- Case insensivity
- Aliases
  - `ll` is aliased to `ls -lv` with date format set to `YYYY-MM-DD`
  - `lla` is the same as before with additional `-A` flag (show hidden files)
  - `gs` is aliased to `git status`
  - `gd` is aliased to `git diff`
  - `ga` is aliased to `git add`
  - `gc` is aliased to `git commit`
  - `gp` is aliased to `git push`
- Neovim
  - Configuration based on [LazyVim](https://nvchad.com/)
  - After first running Neovim, type this command... `:MasonInstallAll`
  - If you want to use [WakaTime](https://wakatime.com/) in Neovim, enter the command `:WakaTimeApiKey` after opening Neovim
- fzf
  - Fuzzy finder, which helps you find files in command line easier
  - You can hit `ctrl + t` anytime to open fzf and look for files
  - You can type `**` and hit `tab` to open dialog more relative to current command... Examples:
    - If you type `kill **<tab>`, it will show you system processes which you can kill
    - If you type `ssh **<tab>`, it will show you last devices you _ssh'd_ to
  - While in fzf dialog, press `enter` to select one item or `tab` to select more items

## Possible Future Updates

There might be some bug fixes or new features in the future
To keep up with this repository, follow these steps

1. `cd ~/.dotfiles` (or wherever you cloned this repo)
1. `git remote update`
1. `git pull`
1. `./use.sh`

---

If something doesn't work, please contact me (see bellow) or [submit an issue](https://github.com/cyprich/dotfiles/issues/new/choose) on this repository

| Contact                                                                                   |
| ----------------------------------------------------------------------------------------- |
| [cypooriginal@gmail.com](mailto:cypoorignal@gmail.com)                                    |
| [@bordel.pruser.margarin](https://www.instagram.com/bordel.pruser.margarin/) on Instagram |
