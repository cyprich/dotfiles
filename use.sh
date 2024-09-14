#!/bin/bash

cd "$HOME/dotfiles"
OUTPUTFILE="./.zshrc"
touch $OUTPUTFILE

clear

echo "                         _           _       _    __ _ _            "
echo "                        ( )         | |     | |  / _(_) |           "
echo "   ___ _   _ _ __   ___ |/ ___    __| | ___ | |_| |_ _| | ___  ___  "
echo "  / __| | | |  _ \ / _ \  / __|  / _  |/ _ \| __|  _| | |/ _ \/ __| "
echo " | (__| |_| | |_) | (_) | \__ \ | (_| | (_) | |_| | | | |  __/\__ \ "
echo "  \___|\__, | .__/ \___/  |___/  \__,_|\___/ \__|_| |_|_|\___||___/ "
echo "        __/ | |                                                     "
echo "       |___/|_|  "
echo ""

# checking dependencies
dependency_check() {
    if ! command -v $1 &> /dev/null; then
        echo "$1 is not installed"
        echo "Do you wish to continue?"
        echo "    1) yes"
        echo "    2) no (default)"

        read -n 1 -s choice
        echo ""

        if [ ! "$choice" == "1" ]; then
            echo "Script ended because dependency \"$1\" is missing"
            exit 1
        fi
    fi

}

dependencies=("git" "zsh" "fzf" "nvim" "stow")

for i in "${dependencies[@]}"; do 
    dependency_check $i
done

# changing shell
if ! command -v zsh &> /dev/null; then
    echo "ZSH is not installed on your system"
    echo "Install 'zsh' and run this script again, or enable ZSH manually"
else 
    if [[ ! "$SHELL" == $( where zsh ) ]]
        echo "Your defalt shell is not ZSH, changing..."
        chsh -s $( which zsh )
    fi
fi

# backing up previous configurations, if present
filename=$( date +%s )

if [ -f "$HOME/.zshrc" ]; then
    mkdir -p "./backups/zsh"
    mv "$HOME/.zshrc" "./backups/zsh/$filename"
fi
if [ -f "$HOME/.p10k.zsh" ]; then
    mkdir -p "./backups/p10k"
    mv "$HOME/.p10k.zsh" "./backups/p10k/$filename"
fi
if [ -d "$HOME/.config/nvim/" ]; then
    mkdir -p "./backups/nvim"
    tar -czf "$HOME/.config/$filename.tar.gz" "$HOME/.config/nvim" 2>/dev/null
    mv "$HOME/.config/$filename.tar.gz" "./backups/nvim"
    #rm -rf "$HOME/.config/nvim/"
fi

# first part of zsh config
cat "./others/zsh-first" > $OUTPUTFILE 

# choosing prompt
prompts=("p10k" "oh-my-posh" "starship")

is_prompt_available() {
    if command -v $1 &> /dev/null; then
        return 0
    fi

    return 1
}

echo "Which prompt do you want to use?"
echo "    1) p10k (default)"
echo "    2) oh-my-posh"
echo "    3) starship"
read -n 1 -s choice
echo ""

selected_prompt="${prompts[$choice - 1]}"

if [ "$choice" -ne 1 ] && [ ! command -v "$selected_prompt" &> /dev/null ]; then
    echo "$selected_prompt is not installed on your system"
    echo "This will cause more problems in the future"
    echo "It's recommended to install $selected_prompt first"
    echo ""
    echo "Do you wish to use $selected_prompt anyway?"
    echo "    1) No, use default prompt - p10k instead (default)"
    echo "    2) Yes, use $selected_prompt (not recommended)"
    read -n 1 -s choice
    echo ""

    if [ ! choice -eq 2 ]; then
        selected_prompt="p10k"
    fi
fi

# second part of zsh config
cat "./others/zsh-$selected_prompt" >> $OUTPUTFILE
cat "./others/zsh-last" >> $OUTPUTFILE


if ! command -v "stow" &> /dev/null; then
    echo "stow is not installed, therefore this configuration cannot be applied automatically"
    echo "Please install stow or apply it manually"
else
    stow .
fi

echo "Configuration complete!"
echo "Now make sure you are using Nerd font as your terminal default and restart your terminal"

