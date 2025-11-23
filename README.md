# i3-xfce4-dotfiles
dotfiles for my i3 + xfce4 setup

if you just want the themes/color schemes, you can find all of them in `.dotfiles/themes/THEME_NAME/.config/`

i unfortunately forgot where i got my wallpapers, so the artists/sources will be added once i remember them

- [how to install](https://github.com/antoine-was-unavailable/i3-xfce4-dotfiles/tree/main?tab=readme-ov-file#how-to-install)
- [how to use](https://github.com/antoine-was-unavailable/i3-xfce4-dotfiles/tree/main?tab=readme-ov-file#how-to-use)
- [themes preview](https://github.com/antoine-was-unavailable/i3-xfce4-dotfiles/tree/main?tab=readme-ov-file#themes-preview)
- [important notes](https://github.com/antoine-was-unavailable/i3-xfce4-dotfiles/tree/main?tab=readme-ov-file#important-notes)
- [to do](https://github.com/antoine-was-unavailable/i3-xfce4-dotfiles/tree/main?tab=readme-ov-file#to-do)

## how to install
- copy all the content from the `.config/` folder to your own `.config/` folder

- in order to run i3 alongside Xfce, you can refer to [this guide](https://forum.endeavouros.com/t/tutorial-easy-setup-endeavour-xfce-i3-tiling-window-manager/13171) from the endeavouros forum

- to get the theme switcher working, move `.dotfiles/` to your home directory and install the [Gruvbox-Dark-Soft](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme), [Marwait X Pink](https://github.com/darkomarko42/Marwaita-X-Pink/) and [Marwait X Dark Pink](https://github.com/darkomarko42/Marwaita-X-Pink/) gtk themes, as well as the [Chicago95](https://github.com/grassmunk/Chicago95) icon theme (+the elementary icons that come bundled with Xfce4)

you will also need to install *at least* the following packages:
- xfce4
- i3
- polybar
- rofi
- kitty
- librewolf
- dunst

<details>
<summary>but i recommend also installing these packages to get the full thing working as intended <b>(some programs or dependencies may be missing for now)</b>:</summary>

| Name           |
| :------------- |
| picom |
| eww |
| nitrogen |
| flameshot |
| vencord |
| nemo |
| font awesome |
| nvidia-smi |
| [rofi calc](https://github.com/svenstaro/rofi-calc) |
| [rofi emoji](https://github.com/Mange/rofi-emoji) |
| cut |
| awk |

</details>

## how to use

[![help](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/help.png)](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/help.png)

## themes preview

- gruvbox (default)

[![gruvbox](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/gruvbox.jpg)](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/gruvbox.jpg)

- cherry-light

[![gruvbox](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/cherry-light.jpg)](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/cherry-light.jpg)

- cherry-dark

[![gruvbox](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/cherry-dark.jpg)](https://raw.githubusercontent.com/antoine-was-unavailable/i3-xfce4-dotfiles/refs/heads/main/media/cherry-dark.jpg)

## important notes

this config is meant to work across all ***my*** computers, so some files such as eww.yuck may contain **absolute path** (since i use the same username across setups)

this also includes things like the theme switcher, which applies wallpapers meant for my specific monitor set up and thus might need some tweaks in order to work on other computers

## to do

- complete the recommended packages list
- add a help menu for the polybar shortcuts
- make an install script
- get the video preview to work
