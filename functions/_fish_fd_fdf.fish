# equivalent to fd $fd_params --type f $argv
function _fish_fd_fdf --wraps _fish_fd_find
    _fish_fd_find --type f $argv
end
