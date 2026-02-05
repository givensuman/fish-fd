# equivalent to fd $fd_params --type d $argv
function _fish_fd_fdd --wraps _fish_fd_find
    _fish_fd_find --type d $argv
end
