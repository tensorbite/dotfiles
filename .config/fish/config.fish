if status is-interactive
  set fish_greeting "" # Disables greeting message.
  fish_add_path --append \
    ~/.local/bin \
    ~/Projects/bin \
    ~/.gcp/google-cloud-sdk/bin
end

# Load .nvmrc from current directory and set desired node version.
nvm_check

###> `bobthefish` Theme configuration
function fish_greeting; end
set -g theme_color_scheme dracula
set -g theme_display_date no
set -g theme_display_node yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt '$ '
set -g theme_title_use_abbreviated_path no
###< `bobthefish` Theme configuration