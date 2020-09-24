#!/bin/bash

clear

min_row=10
min_col=10

max_row=60
max_col=60

random_row=0
random_col=0



function create_random_row_and_col() {
        local rnd_row
	local rnd_col

	let rnd_row=$max_row-$min_row-3
	let rnd_col=$max_col-$min_col-3

	echo "local rnd row: $rnd_row"
	echo "local rnd col: $rnd_col"

	random_row=$(( $RANDOM % rnd_row ))
	random_col=$(( $RANDOM % rnd_col ))

	echo "random_row: $random_row"
	echo "random_col: $random_col"

	let random_row=$random_row+$min_row
	let random_col=$random_col+$min_col

        echo "random_row: $random_row"
        echo "random_col: $random_col"




}


create_random_row_and_col


