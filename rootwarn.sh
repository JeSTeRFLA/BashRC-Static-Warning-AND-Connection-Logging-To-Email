export LANG=C
#################################################
#################################################
###             Color  Variables              ###
#################################################
#################################################
txtblk='\e[0;30m'      #  Black - Regular     ###
txtred='\e[0;31m'      #  Red                 ###
txtgrn='\e[0;32m'      #  Green               ###
txtylw='\e[0;33m'      #  Yellow              ###
txtblu='\e[0;34m'      #  Blue                ###
txtpur='\e[0;35m'      #  Purple              ###
txtcyn='\e[0;36m'      #  Cyan                ###
txtwht='\e[0;37m'      #  White               ###
bldblk='\e[1;30m'      #  Black - Bold        ###
bldred='\e[1;31m'      #  Red                 ###
bldgrn='\e[1;32m'      #  Green               ###
bldylw='\e[1;33m'      #  Yellow              ###
bldblu='\e[1;34m'      #  Blue                ###
bldpur='\e[1;35m'      #  Purple              ###
bldcyn='\e[1;36m'      #  Cyan                ###
bldwht='\e[1;37m'      #  White               ###
unkblk='\e[4;30m'      #  Black - Underline   ###
undred='\e[4;31m'      #  Red                 ###
undgrn='\e[4;32m'      #  Green               ###
undylw='\e[4;33m'      #  Yellow              ###
undblu='\e[4;34m'      #  Blue                ###
undpur='\e[4;35m'      #  Purple              ###
undcyn='\e[4;36m'      #  Cyan                ###
undwht='\e[4;37m'      #  White               ###
bakblk='\e[40m'        #  Black - Background  ###
bakred='\e[41m'        #  Red                 ###
bakgrn='\e[42m'        #  Green               ###
bakylw='\e[43m'        #  Yellow              ###
bakblu='\e[44m'        #  Blue                ###
bakpur='\e[45m'        #  Purple              ###
bakcyn='\e[46m'        #  Cyan                ###
bakwht='\e[47m'        #  White               ###
NC="\e[m"              #  Color Reset         ###
#################################################
#################################################
###             Color  Variables              ###
#################################################
#################################################
terminal_width=$(tput cols)
terminal_height=$(tput lines)
function static_line
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
static_line " WARNING: Events Logged "
printf "\x1b[0;97m\n"
static_line "${txtred}         __________            ___________             ${NC}" ; echo -e ""
static_line "${txtred}         \______   \ ____   ___\__    ___/             ${NC}" ; echo -e ""
static_line "${txtred}          |       _//  _ \ /  _ \|    |   !!LOGGED!!   ${NC}" ; echo -e ""
static_line "${txtred}          |    |   (  <_> |  <_> )    | !!CONNECTION!! ${NC}" ; echo -e ""
static_line "${txtred}          |____|_  /\____/ \____/|____|                ${NC}" ; echo -e ""
static_line "${txtred}                 \/You Dont Belong Here!!!!            ${NC}" ; echo -e ""
echo -e "${NC}"

let remaining=$terminal_height-11
for (( i=0; i<$remaining; i++)); do
        echo ""
done

tput cup 11 0
