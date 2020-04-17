#!/bin/bash
# COLORS FOR OUTPUTS
source ./src/colors.sh  
source ./src/vars.sh

echo -e "${SUCCESS}\n"
echo "    ____  _______    __   __________  ____  __   _____"
echo "   / __ \/ ____/ |  / /  /_  __/ __ \/ __ \/ /  / ___/"
echo "  / / / / __/  | | / /    / / / / / / / / / /   \__ \ "
echo " / /_/ / /___  | |/ /    / / / /_/ / /_/ / /______/ / "
echo "/_____/_____/  |___/    /_/  \____/\____/_____/____/  "
echo -e "${DEFAULT}\n"
echo "$SEPARATOR"

# Homebrew
echo -e "\n${NOTIFICATION}Installing Homebrew ${DEFAULT} \n"
# Redirect output to /dev/null to skip RETURN key press
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
brew cleanup 
brew update 
brew tap homebrew/cask
echo -e "\n${SUCCESS}Brew up-to-date! ${DEFAULT} \n"

echo "$SEPARATOR"

# NVM and Node version
echo -e "\n${NOTIFICATION}Setting up NVM to manage Node versions${DEFAULT} \n"
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
echo -e "\n${SUCCESS}NVM install successful ${DEFAULT} \n"

echo "$SEPARATOR"

VALID=false
VALID_REGEX="^[0-9]{1,2}\.[0-9]{1,2}\.[0-9]{1,2}$"
until [[ "$VALID" == true ]]; do
    echo -e "\n"
    read -p "${NOTIFICATION}Which version of Node would you like to install? [12.16.2] ${DEFAULT}" USER_VERSION
    
    NODE_VERSION=${USER_VERSION:-$DEFAULT_NODE_VERSION}

    if [[ $NODE_VERSION =~ $VALID_REGEX ]]; then
        VALID=true
    else
        echo 'Invalid version number, please enter a valid Node version'
    fi

done

nvm install $NODE_VERSION
nvm use $NODE_VERSION
echo -e "\n${SUCCESS}Node version ${NODE_VERSION} now being used as your default.${DEFAULT} \n"

echo "$SEPARATOR"

for install in "${DEV_INSTALLS[@]}"; do
    NAME=${install%%/*};
    CMD=${install#*/};
    echo -e "\n${NOTIFICATION}Installing $NAME... ${DEFAULT} \n"
    ${CMD}
    echo -e "\n${SUCCESS}${NAME} install successful ${DEFAULT} \n"
    echo "$SEPARATOR"
done

# INSTALL VSCODE EXTENSIONS
for extension in ${VS_CODE_EXTENSIONS[@]}; do
    echo -e "${NOTIFICATION}Installing VSCode Extension $extension ${DEFAULT}"
    code --install-extension ${extension}
done

echo "$SEPARATOR"

echo -e "${NOTIFICATION}Setting up kubectl auto-completion${DEFAULT}"
# kubectl auto-complete (requires bash-completion)
echo -e "source <(kubectl completion bash)" >> ~/.bash_profile
echo -e "${SUCCESS}kubectl auto-completion successfully set up!${DEFAULT}"

echo "$SEPARATOR"