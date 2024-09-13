# dotfiles
All of my configurations for Linux  

## Requirements
Packages that are required to make this run successfully  

| Package name                                 | Description                                                                                                                                 |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `git`                                        | Version control system, used for cloning this repository and `zsh`                                                                          |
| `zsh`                                        | Used shell                                                                                                                                  |
| `fzf`                                        | To make finding files easier                                                                                                                |
| `neovim`                                     | Text editor                                                                                                                                 |
| `stow`                                       | To use this configuration easily                                                                                                            |
| Some [Nerd font](https://www.nerdfonts.com/) | Font for your terminal application. See [section below](#Nerd%20font) |

> Honorable mention: `yazi`. It's a great file manager tool for your terminal  

The default prompt for `zsh` in this configuration is `p10k`  
If you don't want to use it, you can use `oh-my-posh` or `starship` instead, but you need to install it first  

## Usage
1. Clone this repository to your home directory
    - `git clone https://github.com/yungcypo/dotfiles ~/dotfiles/`
    - `cd ~/dotfiles/`
2. Start script, which will guide you through installation
    - `./use.sh` 

## Nerd font  
### What is a Nerd font?
[Nerd font](https://www.nerdfonts.com/#home) is looks just like a regular font, but packed with lots of (glyphs) icons  
It's used to make your terminal look better with icons and other symbols  

### Do I really need it?
Technically, you don't, but it's highly recommended  
Your terminal will *work* the same, but it will *look* a lot worse than it would with Nerd font  

### How to use it?
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

#### Note for users of Arch-based Linux distributions
If you are using `yay` as your package manager, you can install the font via `yay`  
For example `yay -S ttf-jetbrains-mono-nerd` will install *JetBrainsMono Nerd Font*  
Now you just have to set it as your terminal application default (step 6 from previous section)

---

If something doesn't work, please contact me (see bellow) or [submit an issue](https://github.com/yungcypo/dotfiles/issues/new/choose) on this repository

| Contact |
| --- |
| [cypooriginal@gmail.com](mailto:cypoorignal@gmail.com) |
| [@bordel.pruser.margarin](https://www.instagram.com/bordel.pruser.margarin/) on Instagram |

> *I use Arch btw (sorry I had to)*
