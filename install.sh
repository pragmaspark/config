#!/bin/bash

# Install bash configs

# Install fish configs

# Install sway configs

# Install nvim configs

if ! [ -d ~/.config/nvim/ ]; then
	mkdir -p ~/.config/nvim
fi

exec cp ./nvim/* ~/.config/nvim/ 
