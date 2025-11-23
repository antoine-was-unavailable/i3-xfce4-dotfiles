#!/usr/bin/env bash


# exit if no theme is selected
if [ -z "$1" ]; then
  exit 1
fi

# get theming info
gtk_theme=$(cat .dotfiles/themes/$1/info | awk 'NR==1')
icon_theme=$(cat .dotfiles/themes/$1/info | awk 'NR==2')
theme_mode=$(cat .dotfiles/themes/$1/info | awk 'NR==3')


# Switch dark/light mode
if [ $theme_mode == "Dark" ]; then
  gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
else
  gsettings set org.gnome.desktop.interface color-scheme 'default'
fi


# Set theme and icons
xfconf-query -c xsettings -p /Net/ThemeName -s "$gtk_theme"
xfconf-query -c xfwm4 -p /general/theme -s "$gtk_theme"
xfconf-query -c xsettings -p /Net/IconThemeName -s "$icon_theme"


# Copy/apply config files
cp -rf /home/antoine/.dotfiles/themes/$1/.config/* .config/


# Set wallpaper on all 3 monitors
nohup nitrogen --save --set-zoom-fill --head=0 $HOME/.dotfiles/themes/$1/main.* > /dev/null 2>&1
nohup nitrogen --save --set-zoom-fill --head=1 $HOME/.dotfiles/themes/$1/right.* > /dev/null 2>&1
nohup nitrogen --save --set-zoom-fill --head=2 $HOME/.dotfiles/themes/$1/left.* > /dev/null 2>&1

# Reload i3, dunst and polybar
nohup bash /home/antoine/.config/i3/restart_polybar.sh > /dev/null 2>&1 &
nohup i3-msg reload > /dev/null 2>&1
nohup dunstctl reload > /dev/null 2>&1