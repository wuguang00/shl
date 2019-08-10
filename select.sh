#!/bin/bash -l
# use the metod of select, just for a test

function showdescription() {
    showcontent=$1
    echo "will execute command: "$showcontent
}

function diskspace {
    clear
    showdescription "df -k"
    df -k
}

function whoseon {
    clear
    showdescription "who"
    who
}

function memusage {
    clear
    showdescription "cat /proc/meminfo"
    du -h
}

PS3="Enter option: "
select option in "Display disk space" "Display logged on users" "Dispaly memory useage" "Exit program"
do
    case $option in
        "Exit program")
            break ;;
        "Display disk space")
            diskspace ;;
        "Display logged on users")
            memusage ;;
        *)
            clear
            whoseon
            echo "Sorry, wrong selection";;
    esac
done



