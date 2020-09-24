#!/bin/bash

clear

tput bold


function my_quit() {
	tput setaf 8
	clear
	#echo "quiting... PRESS ENTER"
	#read
	#clear
	break
}


trap my_quit SIGINT

tput cup 55 0 && printf "press q to stop"

while true; do
	x=$((RANDOM % 50 ))
	y=$(( RANDOM % 100 ))
	tput setaf $(( RANDOM % 8 ))
	tput cup $x $y && printf "o"

	read -n 1 -t 0.0001 input
	if [[ $input = "q" ]]
	then
		my_quit
	fi
done



#       x=$((RANDOM % 50 ))
#       y=$(( RANDOM % 100 ))
#       tput setaf $(( RANDOM % 8 ))
#       tput cup $x $y && printf "!"


        #tput cup $x $y && printf "█"
	        #printf '\7'
		        #echo -en "\007"
			        #aplay -q ~/pat.mp3
				        #tput flash
					#       echo -e '\07'
					#       sleep 0.1




#for (( i = 1 ; i < 1000 ; i++ ))                                                                                    #do                                                                                                                  #       x=$((RANDOM % 50 ))                                                                                          #       y=$(( RANDOM % 100 ))                                                                                        #       tput setaf $(( RANDOM % 8 ))                                                                                 #       tput cup $x $y && printf "!"                                                                                 #done                                    					
