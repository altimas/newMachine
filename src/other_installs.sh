#!/bin/bash
# COLORS FOR OUTPUTS
source ./src/colors.sh  
source ./src/vars.sh

echo -e "${BOLD}${SUCCESS}\n"
echo "   ____  __  __                 ______            __    "
echo "  / __ \/ /_/ /_  ___  _____   /_  __/___  ____  / /____"
echo " / / / / __/ __ \/ _ \/ ___/    / / / __ \/ __ \/ / ___/"
echo "/ /_/ / /_/ / / /  __/ /       / / / /_/ / /_/ / (__  ) "
echo "\____/\__/_/ /_/\___/_/       /_/  \____/\____/_/____/  "
echo -e "${DEFAULT}\n"                                               
echo "$SEPARATOR"

for install in "${OTHER_INSTALLS[@]}"; do
    NAME=${install%%/*};
    CMD=${install#*/};
    echo -e "\n${NOTIFICATION}Installing $NAME... ${DEFAULT} \n"
    ${CMD}
    echo -e "\n${SUCCESS}$NAME install successful ${DEFAULT} \n"
    echo "$SEPARATOR"
done                               