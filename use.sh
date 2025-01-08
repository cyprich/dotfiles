#!/bin/bash

clear
echo ""
echo "                          _           _       _    __ _ _            "
echo "                         ( )         | |     | |  / _(_) |           "
echo "    ___ _   _ _ __   ___ |/ ___    __| | ___ | |_| |_ _| | ___  ___  "
echo "   / __| | | |  _ \ / _ \  / __|  / _  |/ _ \| __|  _| | |/ _ \/ __| "
echo "  | (__| |_| | |_) | (_) | \__ \ | (_| | (_) | |_| | | | |  __/\__ \ "
echo "   \___|\__, | .__/ \___/  |___/  \__,_|\___/ \__|_| |_|_|\___||___/ "
echo "         __/ | |                                                     "
echo "        |___/|_|                                                     "
echo ""
echo ""

# warning! deleting files
files_to_delete=("$HOME/.config/nvim/" "$HOME/.config/ghostty/" "$HOME/.p10k.zsh" "$HOME/.tmux.conf" "$HOME/.zshrc" "$HOME/.local/share/nvim/" "$HOME/.local/state/nvim/" "$HOME/.cache/nvim/")
affected_files=()
for i in "${files_to_delete[@]}"; do
    if [ -e "$i" ]; then
        affected_files+=("$i")
    fi
done

if [ "${#affected_files[@]} -gt 0" ]; then
    echo "This script will delete previous configurations"
    echo "Affected files and folders:"

    for i in "${affected_files[@]}"; do
        echo "   $i"
    done

    echo ""
    echo "Do you wish to continue? [y/N]"
    read -n 1 -s choice

    if [ ! "$choice" == "y" ]; then
        exit 1
    fi

    for i in "${affected_files[@]}"; do
        rm -rf "$i"
    done

    echo ""
fi

# check dependencies
dependencies=("git" "zsh" "fzf" "nvim" "stow" "tmux" "which")
missing_dependencies=()

for i in "${dependencies[@]}"; do
    if ! command -v $i &>/dev/null; then
        missing_dependencies+=("$i")
    fi
done

if [ "${#missing_dependencies[@]}" -gt 0 ]; then
    echo "There are missing dependencies:"
    for i in "${missing_dependencies[@]}"; do
        echo "    $i"
    done
    echo ""
    echo "Do you wish to continue? [y/N]"

    read -n 1 -s choice

    if [ ! "$choice" == "y" ]; then
        exit 1
    fi

    echo ""
fi

# changing shell
if ! command -v zsh &>/dev/null; then
    echo "'zsh' is not installed on your system"
    echo "Install 'zsh' and run this script again, or enable 'zsh' manually"
    echo ""
else
    if [[ ! "$SHELL" == $(which zsh) ]]; then
        echo "Your defalt shell is not ZSH, changing..."
        echo ""
        chsh -s $(which zsh)
    fi
fi

if ! command -v "stow" &>/dev/null; then
    echo "'stow' is not installed on your system"
    echo "Install 'stow' or apply the configuration manually"
    echo ""
else
    stow .
fi

# source (use) zsh config
source "$HOME/.zshrc"

# for some reason, it keeps removing git aliases
git restore .zshrc

# adding thefuck if it's installed
if ! command -v thefuck &>/dev/null; then
    if ! grep -q "eval \$(thefuck --alias)" "$HOME/.zshrc"; then
        echo 'eval $(thefuck --alias)' >>"$HOME/.zshrc"
    fi
fi

echo "Configuration complete!"
echo "Now make sure you are using Nerd font in your terminal emulator"
echo "Press enter to continue..."

read -n 1
echo ""
echo "If you want to reconfigure prompt, run 'p10k configure'"
echo "You can use Wakatime in Neovim with ':WakaTimeApiKey' command"
echo "Check out 'ghostty' teminal emulator"
echo "Check out 'yazi'"
