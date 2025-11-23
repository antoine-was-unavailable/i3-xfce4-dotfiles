birth=$(stat / | awk '/Birth: /{print $2 " " substr($3,1,5)}')

today=$(date +%s)

install_epoch=$(date --date="$birth" +"%s")

total_days=$(((($today-$install_epoch))/86400))

echo $total_days days


