#!/bin/bash

# Install bash configs
exec cp ./bash/bashrs ~/.bashrc


# Install fish configs
if ! [ -d ~/.config/fish/ ]; then
        mkdir -p ~/.config/fish
fi

exec cp ./fish/* ~/.config/fish/


# Install sway configs


# Install nvim configs
if ! [ -d ~/.config/nvim/ ]; then
	mkdir -p ~/.config/nvim
fi

exec cp ./nvim/* ~/.config/nvim/ 
