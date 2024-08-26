#!/bin/bash

# Get the current operating system linux or mac

os=$(uname -s)

# Check if nvim configuration directory exists

if [ -d $HOME/.config/nvim ]; then
    echo "nvim configuration directory already exists"
    exit 1
fi

# Check if the operating system is linux or mac and install neovim

if [ $os == "Linux" ]; then
    # Check linux distribution
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        if [ $ID == "ubuntu" ]; then
            sudo apt-get install neovim
        elif [ $ID == "fedora" ]; then
            sudo dnf install neovim
        elif [ $ID == "arch" ]; then
            sudo pacman -Sy neovim
        else
            echo "Unsupported linux distribution"
        fi
    fi
elif [ $os == "Darwin" ]; then
    brew install neovim
else
    echo "Unsupported operating system"
fi

# Check if node and python are installed

if ! command -v node &> /dev/null; then
    echo "Node is not installed"
    exit 1
fi

if ! command -v python &> /dev/null; then
    echo "Python is not installed"
    exit 1
fi

# Copy configuration to $HOME/.config/nvim

cp -r ./ $HOME/.config/nvim

nvim --headless +PlugInstall +qall

rm $HOME/.config/nvim/setup.sh

# Install MasonPackages LSP, Linters and formatters

nvim --headless +"MasonInstall clangd eslint-lsp gopls html-lsp jdtls typescript-language-server lua-language-server tailwindcss-language-server omnisharp" +qall

nvim --headless +"MasonInstall markdownlint revive"

nvim --headless +"MasonInstall csharpier gofumpt markdownlint" +qall


echo "Configuration installed"
echo "You can remove this directory now"
