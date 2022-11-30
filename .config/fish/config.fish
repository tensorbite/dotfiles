if status is-interactive
  set fish_greeting "" # Disables greeting message.
  fish_add_path --append \
    ~/.local/bin \
    ~/Projects/bin \
    ~/.gcp/google-cloud-sdk/bin
end
