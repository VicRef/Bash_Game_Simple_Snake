# variables
score=0 # will be used to store the score of the game
# variables below will be used to randomly get the extract-able cells/fields from our mine.
a="1 10 -10 -1"
b="-1 0 1"
c="0 1"
d="-1 0 1 -2 -3"
e="1 2 20 21 10 0 -10 -20 -23 -2 -1"
f="1 2 3 35 30 20 22 10 0 -10 -20 -25 -30 -35 -3 -2 -1"
g="1 4 6 9 10 15 20 25 30 -30 -24 -11 -10 -9 -8 -7"
#
# declarations
declare -a room  # declare an array room, it will represent each cell/field of our mine.


printf '\n\n'
printf '%s' "     a   b   c   d   e   f   g   h   i   j"
printf '\n   %s\n' "-----------------------------------------"


r=0 # our counter
for row in $(seq 0 9); do
	  printf '%d  ' "$row" # print the row numbers from 0-9




is_null_field()
{
   local e=$1 # we used index 'r' for array room already, let's call it 'e'
   if [[ -z "${room[$e]}" ]];then
     room[$r]="o"  # this is where we put the dot(.) to initialize the cell/minefield
   fi
}


for col in $(seq 0 9); do
    ((r+=1))  # increment the counter as we move forward in column sequence
    is_null_field $r  # assume a function which will check, if the field is empty, if so, initialize it with a dot(.)
    printf '%s \e[33m%s\e[0m ' "|" "${room[$r]}" # finally print the separator, note that, the first value of ${room[$r]} will be '.', as it is just initialized.
	      #close col loop
done

printf '%s\n' "|"   # print the line end separator
printf '   %s\n' "-----------------------------------------"
# close row for loop
done
printf '\n\n'


plough()
{
    r=0
    printf '\n\n'
    printf '%s' "     a   b   c   d   e   f   g   h   i   j"
    printf '\n   %s\n' "-----------------------------------------"
    for row in $(seq 0 9); do
      printf '%d  ' "$row"
      for col in $(seq 0 9); do
         ((r+=1))
         is_null_field $r
         printf '%s \e[33m%s\e[0m ' "|" "${room[$r]}"
      done
      printf '%s\n' "|"
      printf '   %s\n' "-----------------------------------------"
    done
    printf '\n\n'
}



get_free_fields()
{
  free_fields=0    # initialize the variable
  for n in $(seq 1 ${#room[@]}); do
    if [[ "${room[$n]}" = "." ]]; then  # check if the cells has initial value dot(.), then count it as a free field.
      ((free_fields+=1))
    fi
    done
}




