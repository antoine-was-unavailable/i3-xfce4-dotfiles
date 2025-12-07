

if [ "${1:0-1}" == "s" ]; then
	TIMER=$(($(echo "${1:0}" | rev | cut -c 2- | rev)))
elif [ "${1:0-1}" == "m" ]; then
	TIMER=$(($(echo "${1:0}" | rev | cut -c 2- | rev)))
	((TIMER=$TIMER*60))
	echo $TIMER
elif [ "${1:0-1}" == "h" ]; then
	TIMER=$(($(echo "${1:0}" | rev | cut -c 2- | rev)))
	((TIMER=$TIMER*3600))
	echo $TIMER
else
	TIMER=$(($1*60))
fi


polybar-msg action "#pomodoro.module_show"
date -d@$TIMER -u +%M:%S > $HOME/.config/polybar/scripts/pomodoro.txt


while [ $TIMER != 0 ]
do
	((TIMER=$TIMER-1))
	#echo $(date -d@$TIMER -u +%M:%S)
	date -d@$TIMER -u +%M:%S > $HOME/.config/polybar/scripts/pomodoro.txt
	sleep 1
done

dunstify ポモドーロ "Countdown is over!"

TIMER=3
while [ $TIMER != 0 ]
do
	echo "‎ ‎ ‎ ‎‎ ‎ ‎‎" > $HOME/.config/polybar/scripts/pomodoro.txt
	sleep 1
	echo "00:00" > $HOME/.config/polybar/scripts/pomodoro.txt
	sleep 1
	((TIMER=$TIMER-1))
done

polybar-msg action "#pomodoro.module_hide"
