#!/bin/bash
# resets default super + num keybindings
for i in {1..9}; do 
   gsettings set "org.gnome.shell.keybindings" "switch-to-application-$i" "[]" 
done

# remaps super + num to switch workspaces
for i in {1..9}; do 
   gsettings set "org.gnome.desktop.wm.keybindings" "switch-to-workspace-$i" "['<Super>${i}']" 
done

