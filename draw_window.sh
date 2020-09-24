

pos_row=10
pos_col=10
max_row=60


function game_window(){
        while ((  pos_row < max_row ))
        do
                tput cup $pos_row $pos_col
                echo "|"
                let pos_row++
		
        done
}

clear

game_window

read



