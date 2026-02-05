# `fd` wrapper with parameter handling
function _fish_fd_find --wraps fd
    if set -q fd_params; and test -n "$fd_params"
        set -l params (string split ' ' -- $fd_params)
        command fd $params $argv
    else
        command fd --hidden \
            --follow \
            --exclude .git \
            $argv
    end
end

if not command -q fd
    echo "fd is not installed but you're"
    echo "sourcing the fish plugin for it"
    return 1
end

# Handle dumb terminal case
if test "$TERM" = dumb
    echo "you are sourcing the fish plugin for fd"
    echo "in a dumb terminal, which won't support it"
    return 1
end

# Main aliases
alias fd _fish_fd_find
if command -q find
    alias rfind (command -v find)
end
alias find _fish_fd_find

# Convenience aliases
alias fda _fish_fd_fda
alias fdd _fish_fd_fdd
alias fdf _fish_fd_fdf
alias fdx _fish_fd_fdx
alias fde _fish_fd_fde

function _fish_fd_install --on-event fish-fd_install
end

function _fish_fd_uninstall --on-event fish-fd_uninstall
    functions --erase _fish_fd_find
    functions --erase find
    functions --erase fd

    functions --erase fda
    functions --erase fdd
    functions --erase fdf
    functions --erase fdx
    functions --erase fde

    set --erase fd_params
end

function _fish_fd_update --on-event fish-fd_update
    _fish_fd_uninstall
    _fish_fd_install
end
