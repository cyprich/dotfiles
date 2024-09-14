# dotfiles
All of my configurations for Linux  

## Requirements
Packages that are required to make this run successfully  

| Package name                                 | Description                                                           |
| -------------------------------------------- | --------------------------------------------------------------------- |
| `git`                                        | Version control system, used for cloning this repository and `zsh`    |
| `zsh`                                        | Used shell                                                            |
| `fzf`                                        | To make finding files easier                                          |
| `neovim`                                     | Text editor                                                           |
| `stow`                                       | To use this configuration easily                                      |
| Some [Nerd font](https://www.nerdfonts.com/) | Font for your terminal application. See [section below](#Nerd%20font) |

### Additional packages *(optional)*
| Package name | Description |
|-|-|
| `yazi` | Great file manager tool for your terminal |
| `oh-my-posh` or `starship` | Prompt, which you can use. The default is `p10k`, which is installed automatically |

> Note: There is a file `requirements.txt`, which you can simply view with the command `cat requirements.txt`

## Installation
1. Clone this repository to subfolder of your home directory
    - `git clone https://github.com/yungcypo/dotfiles.git ~/dotfiles/`
    - `cd ~/dotfiles/`
2. Start script, which will guide you through installation
    - `./use.sh` 

> Note: You have to clone this repository in subfolder of your home directory

### Nerd font  
#### What is a Nerd font?
[Nerd font](https://www.nerdfonts.com/#home) is looks just like a regular font, but packed with lots of glyphs (icons)  
It's used to make your terminal look better with icons and other symbols  

#### Do I really need it?
Technically, you don't, but it's highly recommended  
Your terminal will *work* the same, but it will *look* a lot worse than it would with Nerd font  

#### How to use Nerd font?
1. Go to [www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads)
2. Choose one font you like, and download it 
3. Extract downloaded file 
    - You can use command `unzip -d <filename>`  
4. Move extracted files to folder containing fonts  
    - If you want to install it just for you, the folder is `~/.fonts`
    - If you want to install it globally, the folder is `/usr/share/fonts/` (requires sudo privileges)
5. Rebuild the font cache
    - `fc-cache -fv`
6. Make your terminal application use your newly installed font
    - This might be different depending on the application you use
    - There are few examples, I hope it will be similar in other applications
        - Gnome console 
            1. Go to 3 dashes at the top
            2. Go to `Preferences`
            3. Under `Font` Disable `Use system default`
            4. Click on `Custom font` and select the font you just installed
        - Konsole
            1. Go to 3 dashes at the top
            2. Go to `Create New Profile`
            3. Go to `Appearance` tab
            4. Click on `Choose` next to `Font` and select the font you just installed
    - If you don't see your new font here, and you are sure you installed it correctly, try to restart your terminal application

#### Note for users of Arch-based Linux distributions
If you are using `pacman` as your package manager, you can install the font via `pacman`  
For example `pacman -S ttf-jetbrains-mono-nerd` will install *JetBrainsMono Nerd Font*  
Now you just have to use it as default in your terminal application (step 6 from previous section)

## Features
What does this configuration offer?  

- Syntax Highlighting
    - Makes commands you type colorful, for better visibility
- Autosuggestions
    - It will suggest the rest of command, based on commands you entered previously
    - Press `right arrow` accept whole command
    - Press `ctrl + right arrow` to accept one word of command
- Better Key Shortcuts
    - `ctrl + left arrow` to go forward whole word
    - `ctrl + right arrow` to go backward whole word
    - `ctrl + backspace` delete whole word (to the right side of cursor)
- Case insensivity
    - When completing commands with `tab`, lowercase and uppercase letters are considered the same
    - For example, if you want to `cd` into `Pictures` directory, you can just type `pic` and hit `tab`. This will complete the directory name and fix the first letter to uppercase
- Aliases
    - `ll` is aliased to `ls -lv` with date format set to `YYYY-MM-DD`
    - `lla` is the same as before with additional `-a` flag (show hidden files)
- Neovim
    - Configuration based on [NvChad](https://nvchad.com/)
    - If you want to use [WakaTime](https://wakatime.com/) in Neovim, please enter the command `:WakaTimeApiKey` after opening Neovim
- fzf
    - Fuzzy finder, which helps you find files in command line easier
    - You can hit `ctrl + t` anytime to open fzf and look for files
    - You can type `**` and hit `tab` to open dialog more relative to current command... Examples:
        - If you type `kill **<tab>`, it will show you system processes which you can kill  
        - If you type `ssh **<tab>`, it will show you last devices you *ssh'd* to
    - While in fzf dialog, press `enter` to select one item or `tab` to select more items
- yazi (optional, but really cool)
    - Requires installation of yazi
    - Yazi is command line file manager, which helps you browse through files easier
    - You can use vim shortcuts  
        - `j` and `k` to go up and down through files respectively 
            - Alternatively, you can use up and down arrows
        - `l` to open current folder
            - Alternatively, you can use right arrow
        - `h` to go up one folder
            - Alternatively, you can use left arrow
        - `y`, `p`, `x`, `d` and `r` to `copy`, `paste`, `cut`, `delete` and `rename` files/directories respectively    
        - `enter` to open file in Neovim
        - `.` (dot) to see/hide hidden files
        - `space` to select/unselect multiple files
    - You can see the content of file and hit `enter` to open it in Neovim
    - If you are using terminal like [Kitty](https://github.com/kovidgoyal/kitty), you can also see image and video thumbnails

## Possible Future Updates
There might be some bug fixes or new features in the future  

To keep up with this repository, follow these steps  
1. `git remote update`
2. `git pull`
3. `./use.sh`

---

If something doesn't work, please contact me (see bellow) or [submit an issue](https://github.com/yungcypo/dotfiles/issues/new/choose) on this repository

| Contact |
| --- |
| [cypooriginal@gmail.com](mailto:cypoorignal@gmail.com) |
| [@bordel.pruser.margarin](https://www.instagram.com/bordel.pruser.margarin/) on Instagram |

> *I use Arch btw* (sorry, I had to)
