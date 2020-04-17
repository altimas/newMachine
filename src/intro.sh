#!/bin/bash
# COLORS FOR OUTPUTS
source ./src/colors.sh  
source ./src/vars.sh
# LOGO
echo "$SEPARATOR"
echo -e "${BOLD}${SUCCESS}\n"
echo "    ___              _       __ _             _   "
echo "   / __\ __ ___  ___| |__   / _\ |_ __ _ _ __| |_ "
echo "  / _\| '__/ _ \/ __| '_ \  \ \| __/ _' | '__| __|"
echo " / /  | | |  __/\__ \ | | | _\ \ || (_| | |  | |_ "
echo " \/   |_|  \___||___/_| |_| \__/\__\__,_|_|   \__|"                                                                                          
echo -e "${DEFAULT}\n"
echo "$SEPARATOR"

# Installs / prereqs
echo -e "${BOLD}This utility will install and configure what you need for development \n${DEFAULT}"
echo -e "\n"
echo -e "${BOLD}Development Tools:${DEFAULT}"

for install in "${DEV_INSTALLS[@]}"; do
    NAME=${install%%/*};
    echo -e "- ${NAME}"
done
echo -e "- Homebrew"
echo -e "- NVM + recommended Node version"
echo -e "- VSCode extensions"
echo -e "- Kubectl auto-completion"

echo -e "${BOLD}Other Tools:${DEFAULT}"
for install in "${OTHER_INSTALLS[@]}"; do
    NAME=${install%%/*};
    echo -e "- ${NAME}"
done

echo -e "\n"
read -p "${BOLD}${NOTIFICATION}Press ENTER to begin (CTRL-C to abort)${DEFAULT}"

echo "$SEPARATOR"