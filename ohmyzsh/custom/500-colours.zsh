## colour library
# variables defined for colours

## FUNCTIONS
##########################################################

## echo ending on new line
function msg {
    echo -e "${@}${NC}"
}

## no new line at end
function msgf {
	printf "${@}${NC}"
}

## echo ending on new line without resetting colour
function msgu {
    echo -e "${@}"
}

## no new line at end without resetting colour
function msgfu {
	printf "${@}"
}

## NO COLOUR
NC='\033[0m'              # Text Reset

## Highlight
HBlack='\033[40m'         # Black
HRed='\033[41m'           # Red
HGreen='\033[42m'         # Green
HYellow='\033[43m'        # Yellow
HBlue='\033[44m'          # Blue
HPurple='\033[45m'        # Purple
HCyan='\033[46m'          # Cyan
HWhite='\033[47m'         # White

## Regular Colors (0)
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

## Bold (1)
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

## Dim (2)
DBlack='\033[2;30m'       # Black
DRed='\033[2;31m'         # Red
DGreen='\033[2;32m'       # Green
DYellow='\033[2;33m'      # Yellow
DBlue='\033[2;34m'        # Blue
DPurple='\033[2;35m'      # Purple
DCyan='\033[2;36m'        # Cyan
DWhite='\033[2;37m'       # White

## Italic (3)
IBlack='\033[3;30m'       # Black
IRed='\033[3;31m'         # Red
IGreen='\033[3;32m'       # Green
IYellow='\033[3;33m'      # Yellow
IBlue='\033[3;34m'        # Blue
IPurple='\033[3;35m'      # Purple
ICyan='\033[3;36m'        # Cyan
IWhite='\033[3;37m'       # White

## Underline (4)
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

## Slow Blink (5)
SBlack='\033[5;30m'       # Black
SRed='\033[5;31m'         # Red
SGreen='\033[5;32m'       # Green
SYellow='\033[5;33m'      # Yellow
SBlue='\033[5;34m'        # Blue
SPurple='\033[5;35m'      # Purple
SCyan='\033[5;36m'        # Cyan
SWhite='\033[5;37m'       # White

## Fast Blink (6)
# FBlack='\033[6;30m'       # Black
# FRed='\033[6;31m'         # Red
# FGreen='\033[6;32m'       # Green
# FYellow='\033[6;33m'      # Yellow
# FBlue='\033[6;34m'        # Blue
# FPurple='\033[6;35m'      # Purple
# FCyan='\033[6;36m'        # Cyan
# FWhite='\033[6;37m'       # White

## Reverse (7)
RBlack='\033[7;30m'       # Black
RRed='\033[7;31m'         # Red
RGreen='\033[7;32m'       # Green
RYellow='\033[7;33m'      # Yellow
RBlue='\033[7;34m'        # Blue
RPurple='\033[7;35m'      # Purple
RCyan='\033[7;36m'        # Cyan
RWhite='\033[7;37m'       # White

## Hidden (8)
hBlack='\033[8;30m'       # Black
hRed='\033[8;31m'         # Red
hGreen='\033[8;32m'       # Green
hYellow='\033[8;33m'      # Yellow
hBlue='\033[8;34m'        # Blue
hPurple='\033[8;35m'      # Purple
hCyan='\033[8;36m'        # Cyan
hWhite='\033[8;37m'       # White

## Cross-out (9)
# CBlack='\033[9;30m'       # Black
# CRed='\033[9;31m'         # Red
# CGreen='\033[9;32m'       # Green
# CYellow='\033[9;33m'      # Yellow
# CBlue='\033[9;34m'        # Blue
# CPurple='\033[9;35m'      # Purple
# CCyan='\033[9;36m'        # Cyan
# CWhite='\033[9;37m'       # White

# ==============================

## High Intensity
iBlack='\033[0;90m'       # Black
iRed='\033[0;91m'         # Red
iGreen='\033[0;92m'       # Green
iYellow='\033[0;93m'      # Yellow
iBlue='\033[0;94m'        # Blue
iPurple='\033[0;95m'      # Purple
iCyan='\033[0;96m'        # Cyan
iWhite='\033[0;97m'       # White

## Bold High Intensity
biBlack='\033[1;90m'      # Black
biRed='\033[1;91m'        # Red
biGreen='\033[1;92m'      # Green
biYellow='\033[1;93m'     # Yellow
biBlue='\033[1;94m'       # Blue
biPurple='\033[1;95m'     # Purple
biCyan='\033[1;96m'       # Cyan
biWhite='\033[1;97m'      # White

## High Intensity backgrounds
hiBlack='\033[0;100m'   # Black
hiRed='\033[0;101m'     # Red
hiGreen='\033[0;102m'   # Green
hiYellow='\033[0;103m'  # Yellow
hiBlue='\033[0;104m'    # Blue
hiPurple='\033[0;105m'  # Purple
hiCyan='\033[0;106m'    # Cyan
hiWhite='\033[0;107m'   # White
