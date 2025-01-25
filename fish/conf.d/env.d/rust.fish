# Rust-related environment variables and paths (with checks)
set -q CARGO_HOME; or set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -q RUSTUP_HOME; or set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
fish_add_path $CARGO_HOME/bin
