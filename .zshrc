######## Environment variables #################################################
export NVM_LAZY_LOAD=true

######## Load rc files #########################################################
source ~/.antigen/antigen.zsh
source ~/.profile

######## Autocompletion ########################################################
# Enable bash autocompletion.
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
# AWS CLI Autocompletion.
if [ -x "$(command -v aws_completer)" ]; then
  complete -C $(command -v aws_completer) aws
fi

######## Antigen ###############################################################
antigen use oh-my-zsh
antigen bundle docker
antigen bundle docker-compose
antigen bundle dotenv
antigen bundle git
antigen bundle kubectl
antigen bundle pip
antigen bundle pipenv
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen theme simple

antigen apply
