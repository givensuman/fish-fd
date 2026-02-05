# equivalent to fd $fd_params --extension $argv
function _fish_fd_fde --wraps _fish_fd_find
    _fish_fd_find --extension $argv
end
