w=$(curl -s wttr.in/$1?format="%C") #get current weather
if [[ ${w,,} == *"fog"* || ${w,,} == *"mist"* ]];then
	w=""
elif [[ ${w,,} == *"sunny"* || ${w,,} == *"clear"* ]];then
        w=""
elif [[ ${w,,} == *"cloudy"* ]];then
        w=""
elif [[ ${w,,} == *"rain"* ]];then
        w=""
elif [[ ${w,,} == *"snow"* ]];then
        w=""
elif [[ ${w,,} == *"sleet"* ]];then
        w=""
elif [[ ${w,,} == *"overcast"* ]];then
        w=""
elif [[ ${w,,} == *"thunder"* ]];then
        w=""
fi


t=$(curl -s wttr.in/$1?format="%t") #get current temperature



echo $w"　"$t
