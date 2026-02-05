# equivalent to fd $fd_params --type x $argv
function _fish_fd_fdx --wraps _fish_fd_find
    _fish_fd_find --type x $argv
end
