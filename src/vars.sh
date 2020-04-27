# VS CODE EXTENSIONS TO INSTALL
VS_CODE_EXTENSIONS=( \
    aaron-bond.better-comments \
    bengreenier.vscode-node-readme \
    nicholashsiang.vscode-react-snippet \
    christian-kohler.npm-intellisense \
    dbaeumer.vscode-eslint \
    dzannotti.vscode-babel-coloring \
    orta.vscode-jest \
    eamodio.gitlens \
    eg2.vscode-npm-script \
    esbenp.prettier-vscode \
    mohsen1.prettify-json \
    mrmlnc.vscode-autoprefixer \
    ms-azuretools.vscode-docker \
    ms-vscode.Go \
    ms-vscode.vscode-typescript-tslint-plugin \
    ms-vsliveshare.vsliveshare \
    pnp.polacode \
    redhat.vscode-yaml \
    Shan.code-settings-sync \
    vscode-icons-team.vscode-icons \
    waderyan.gitblame \
    wix.vscode-import-cost \
)

# NODE VERSION TO INSTALL VIA NVM
DEFAULT_NODE_VERSION=12.16.2

declare -a DEV_INSTALLS=(\
"Xcode/xcode-select --install" \
"Git/brew install git" \
"Iterm2/brew cask install iterm2" \
"Visual Studio Code/brew cask install visual-studio-code" \
"Postgresql/brew install postgresql" \
"curl/brew install curl" \
"jq/brew install jq" \
"HTTPie/brew install httpie" \
"brew cask install insomnia" \
"Bash-Completion/brew install bash-completion" \
"DBeaver/brew cask install dbeaver-community" \
"Kubernetes CLI/brew install kubernetes-cli" \
"KOPS/brew install kops" \
"MiniKube/brew install minikube" \
)

declare -a OTHER_INSTALLS=(\
"Google Chrome/brew cask install google-chrome" \
"Slack/brew cask install slack" \
)