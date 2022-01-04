if [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

######## Aliases ###############################################################
alias node-modules-ls='find . -name "node_modules" -type d -prune -print | xargs du -chs'
alias node-modules-rm='find . -name "node_modules" -type d -prune -exec rm -rf "{}" +'

######## Load local config #####################################################
if [ -f "$HOME/.profile.local" ]; then
  source "$HOME/.profile.local"
fi

######## NVM section ###########################################################
export NVM_DIR="${HOME}/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ] ; then
  source "$NVM_DIR/nvm.sh"
  if [ -x "$(command -v npm)" ]; then
    PATH="$PATH:$(npm config --global get prefix)/bin"
  fi
fi

######## PATH variable overriding ##############################################
PATH_DIRS=(
  "$HOME/bin"
  "$HOME/.local/bin"
  "$HOME/.composer/vendor/bin"
  "$HOME/Projects/bin"
  "$HOME/Library/Python/3.9/lib/python/site-packages" # MacOS-specific.
)
for PATH_DIR in ${PATH_DIRS[@]}; do
  if [ -d "$PATH_DIR" ]; then
    PATH="$PATH_DIR:$PATH"
  fi
done

######## QT Apps x2 scaling fix for hi-dpi monitors ############################
# export QT_SCALE_FACTOR=1
# export QT_AUTO_SCREEN_SCALE_FACTOR=0
# export QT_SCREEN_SCALE_FACTORS=2
################################################################################

######## Gnome: QT apps adjustments ############################################
## Requires kvantum: `apt install qt5-style-kvantum qt5-style-kvantum-themes`
#export QT_STYLE_OVERRIDE=kvantum
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
################################################################################
