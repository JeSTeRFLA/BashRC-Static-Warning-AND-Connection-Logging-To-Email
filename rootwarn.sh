terminal_width=$(tput cols)
terminal_height=$(tput lines)
function put_line
{
        size=${#1}
        let provision=(terminal_width-size)/2
        if [[ $provision -lt 0 ]]; then
                provision=0
        fi
        tput cuf $provision
        printf "$1"
}

echo -e "\n"
printf "\x1b[41;97;1m"
put_line " WARNING "
put line " Events Logged "
printf "\x1b[0;97m\n"
put_line "$txtcyn        __________            ___________             $txtrst" ; echo -e ""
put_line "$txtcyn        \______   \ ____   ___\__    ___/             $txtrst" ; echo -e ""
put_line "$txtcyn         |       _//  _ \ /  _ \|    |   !!LOGGED!!   $txtrst" ; echo -e ""
put_line "$txtcyn         |    |   (  <_> |  <_> )    | !!CONNECTION!! $txtrst" ; echo -e ""
put_line "$txtcyn         |____|_  /\____/ \____/|____|                $txtrst" ; echo -e ""
put_line "$txtcyn                \/You Dont Belong Here!!!!            $txtrst" ; echo -e ""
echo -e "\x1b[0m"

let remaining=$terminal_height-11
for (( i=0; i<$remaining; i++)); do
        echo ""
done

tput cup 11 0
