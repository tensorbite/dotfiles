# Check for a .nvmrc file in the current directory and use the specified Node version if available.
function nvm_check --on-variable PWD --description 'Do nvm stuff'
  if test -f .nvmrc
    # Read the required Node version from the .nvmrc file and trim whitespace
    set -l nvmrc_node_version (string trim (cat .nvmrc))
    # Get the currently active Node version, removing the 'v' prefix
    set -l node_version (node -v | string replace 'v' '')
    # Check if .nvmrc version is installed and use it, or install it if not available
    if not nvm ls $nvmrc_node_version > /dev/null 2>&1
      nvm install $nvmrc_node_version
    else if not string match -q -- "$node_version" $nvmrc_node_version
      nvm use $nvmrc_node_version
    end
  end
end