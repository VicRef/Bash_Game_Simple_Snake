#!/bin/bash

clear

tput bold

my_snake=()



x=0
y=0
direction=1



#tput cvvis
#system("setterm -cursor off");

function init() {
	x=$(( RANDOM % 50 + 10 ))
	y=$(( RANDOM % 50 + 10 ))
	direction=$((RANDOM % 3 + 1 ))
	#echo x: $x y: $y direction: $direction
	my_snake+=($x)
        my_snake+=($y)
        my_snake+=($direction)
	echo ${my_snake[@]}
	#echo	
	tput cup 55 0 && printf "press q to stop"
	tput cup $x $y && printf "XXXXXXX"
	sleep 1
}


function one_step() {
	#temp_x=${my_snake[0]}
	#temp_y=${my_snake[1]}
	#temp_d=${my_snake[2]}
	#echo temps: $temp_x
       	#echo $temp_y 
	#echo $temp_d

	for (( i = 10; i < 25; i++ ))
	do 
		tput cup i i && printf "o"
		sleep 1
	done
}

function make_headway() {
	temp_x=10
	temp_y=10

	for (( i = 1; i < 25; i++ ))
	do
		one_step temp_x temp_y
		let temp_x++
	done



	#while [ $temp_x -lt 50 ]
	#do
	#case $1 in
	#	1)
	#		#echo right
	#		one_step temp_x temp_y
	#		(( temp_x+=1 ))
	#	;;
	#	2)		
	#		(( temp_x+=1 ))
	#	;;
	#	3)
	#
	#		(( temp_x+=1 ))
	#	;;
	#	4)
	#
	#		(( temp_x+=1 ))
	#	;;
	#esac
	#done


}

#function my_quit() {
#	tput setaf 8
#	tput cnorm
#	clear
#	break
#}

#trap my_quit SIGINT

init

for (( i = 10; i < 25; i++ ))
do
    tput cup i i && printf "o"
    sleep 1
done


#one_step
#make_headway

#while true; do
#	tput cup $x $y && printf "$my_snake"
#	let y+=1
#	#let x+=1
#	read -n 1 -t 1 input
#	if [[ $input = "q" ]]
#	then
#		my_quit
#	fi
#	printf "\033c"
 #       #clear
#done



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
