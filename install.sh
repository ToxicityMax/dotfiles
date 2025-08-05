#!/bin.bash
# WARN: DO NOT RUN THIS.
# Just spitting install commands 
# Better run these manually
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
cat ~/.config/fish/plugins_list | xargs | fisher install

function stow_init()
{
   dirs=$(ls -d */)
   for dir in $dirs
   do
     echo "Check the plan..."
     stow -nv $dir
   done
 
   read -p "Are you sure? y/n " -n 1 -r
   echo
   if [[ $REPLY =~ ^[Yy]$ ]]
   then
     for dir in $dirs
     do
       stow -v $dir
     done
   fi
}

# Pacman/Homebrew essential packages
# kitty
# fish
# insomnia
# font-iosevka
# cowsay # Yes it's essential
# ffmpeg
# harper
# iredis
# pgcli
# sops
# starship
# stow
# taplo
# tmux
# tree
