#!/usr/bin/env bash

# DEFAULT VAR
KAO_PATH=kaomoji.txt #default file path
PRINT_COLOR="" #default output color (none/empty)


show_help() {
    echo "Usage: $(basename $0) [OPTIONS]"
    echo "Options:"
    echo "  -h, --help              Display this message"
    echo "  -r                      Output with a random terminal color"
    echo "  -p=PATH, --path=PATH    Change the emoji file"
    exit 1
}


# arguments handling
for i in "$@"; do
    case $i in
        -h|--help) # help message
        show_help
        ;;
        -r) # output w/ random color
            color=$((31 + $RANDOM % 7 + ( $RANDOM % 2 * 60 ))) #choose random terminal color (31->37 or 91 ->97)
            PRINT_COLOR="\e[0;${color}m"
        ;;
        -p=*|--path=*) #kaomoji.txt path
            KAO_PATH="${i#*=}"
        ;;
    esac
done


LINE_NUMBER=($(wc --lines < $KAO_PATH)) #get amount of kaomojis in kaomoji.txt
n=$((1 + $RANDOM % $LINE_NUMBER)) # choose random line

kaomoji=$(cat $KAO_PATH | head -$n | tail -1) # select n kaomoji

echo -e $PRINT_COLOR$kaomoji"\e[m" # echo result