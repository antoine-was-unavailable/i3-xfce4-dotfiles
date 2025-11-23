
File=$HOME/.config/i3/borders_size

if ! grep -q NOBORDER "$File";
then
  cp $HOME/.config/i3/scripts/borders/no_borders $File
else
  cp $HOME/.config/i3/scripts/borders/border_gap $File
fi

i3-msg reload
