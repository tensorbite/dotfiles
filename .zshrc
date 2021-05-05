export NVM_LAZY_LOAD=true

source ~/.antigen/antigen.zsh
source ~/.profile

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
