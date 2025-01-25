# Node.js-related environment variables and paths (with checks)
set -q NODE_REPL_HISTORY; or set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/nodejs/repl_history

# pnpm-related environment variables and paths (with checks)
set -q PNPM_HOME; or set -gx PNPM_HOME $XDG_DATA_HOME/pnpm
fish_add_path $PNPM_HOME
