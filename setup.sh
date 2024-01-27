#!/bin/bash

# Nvim config setup
ln -s ~/AJDevConfigs/nvim ~/.config/nvim

# Install Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
