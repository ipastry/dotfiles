function start_ssh_agent
    # Check if SSH agent is already running
    if not set -q SSH_AUTH_SOCK
        echo "Starting new SSH agent..."
        # Start the SSH agent and extract SSH_AUTH_SOCK
        eval (ssh-agent -c)
        set -x SSH_AUTH_SOCK (ssh-agent -s | grep -oP 'SSH_AUTH_SOCK=\K[^\s]+')
    else
        echo "SSH agent is already running."
    end
end
