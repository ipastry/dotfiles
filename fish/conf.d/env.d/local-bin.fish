# Add local bin directories to PATH
fish_add_path --prepend (path filter $HOME/bin $HOME/.local/bin)
