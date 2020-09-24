loop=true
while $loop; do
    trapKey=
    if IFS= read -d '' -rsn 1 -t 1 str; then
        while IFS= read -d '' -rsn 1 -t 1 chr; do
            str+="$chr"
        done
        case $str in
            $'\E[A') trapKey=UP    ;;
            $'\E[B') trapKey=DOWN  ;;
            $'\E[C') trapKey=RIGHT ;;
            $'\E[D') trapKey=LEFT  ;;
            q | $'\E') loop=false  ;;
        esac
    fi
    if [ "$trapKey" ] ;then
        printf "\nDoing something with '%s'.\n" $trapKey
    fi
    echo -n .
    #sleep 1
done
