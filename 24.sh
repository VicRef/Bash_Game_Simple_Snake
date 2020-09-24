#!/bin/bash


clear
tput setf 7
tput cup 20 20
echo OOO
sleep 3

tput setf 0
tput cup 20 20
echo OOO

tput setf 7

sleep 3

read





function assign_initial_values() {
        pos_row=10
        pos_col=10
        min_row=10
        min_col=10
        max_row=60
        max_col=60

        posx=5;
        posy=5
        minx=5;
        maxx=50
        miny=5;
        maxy=50
        wall_char="X"
}

function game_window(){
        while ((  pos_col < max_col ))
        do
                tput cup $min_row $pos_col
                echo "_"
                tput cup $max_row $pos_col
                echo "_"
                let pos_col++
        done

        while ((  pos_row < max_row ))
        do
                tput cup $pos_row $min_col
                echo "|"
                tput cup $pos_row $max_col
                echo "|"
                let pos_row++
        done
}

