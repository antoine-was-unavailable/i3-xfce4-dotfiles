
File=$HOME/.config/i3/scripts/float_mode/rule

if ! grep -q NOFLOAT "$File";
then
  cp $HOME/.config/i3/scripts/float_mode/rule_default $File
  killall xfce4-panel
else
  cp $HOME/.config/i3/scripts/float_mode/rule_float $File
  xfce4-panel &
fi

i3-msg reload