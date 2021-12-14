# Edited from Codic's Qtile CE install script for EndeavourOS
# NEEDS BETTER ERROR HANDLING
# AND BACKUP FILES

echo "Deletes some existing config. Are you sure you want to do this? (yes/no)"
read x
if [ "$x" = "yes" ]
then
  echo "Presuming that all dependencies already installed..."

  rm -f ~/.Xresources ~/.config/picom.conf
  cp .Xresources ~/
  #cp .gtkrc-2.0 ~/
  cp picom.conf ~/.config/picom.conf
  #rm -rf ~/.config/gtk-3.0/
  #cp -r .config/gtk-3.0 ~/.config/
  rm -rf ~/git/dwm/config.def.h
  cp -r dwm ~/git/dwm
  rm -rf ~/git/st/config.h
  cp -r st ~/git/st
  rm -rf ~/git/dmenu/config.def.h
  cp -r dmenu ~/git/dmenu
  rm -rf ~/git/dwmblocks/blocks.def.h
  cp -r dwmblocks ~/git/dwmblocks
  rm -rf ~/.config/dunst/dunstrc
  cp -r dunst ~/.config/dunst
  echo 'done'
fi

