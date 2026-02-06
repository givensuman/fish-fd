<div align="center">
  <img alt="fish-fd" src="./assets/logo.png" height="200" />
</div>

# fish-fd

An `fd` plugin for the Fish shell.

### Installation

Install with [fisher](https://github.com/jorgebucaran/fisher):

```shell
fisher install givensuman/fish-fd
```

### Usage

Replaces `find` with `fd`. To run the normal `find` command, use `rfind`.

| Variable  | Description                            | Default                            |
| --------- | -------------------------------------- | ---------------------------------- |
| fd_params | `fd` params to be used with every call | `--hidden --follow --exclude .git` |

### Aliases

| Alias | Command          | Description                |
| ----- | ---------------- | -------------------------- |
| fda   | `fd --no-ignore` | Find all files             |
| fdd   | `fd --type d`    | Find directories only      |
| fde   | `fd --extension` | Find files by extension    |
| fdf   | `fd --type f`    | Find regular files only    |
| fdx   | `fd --type x`    | Find executable files only |

### Requirements

Just requires [fd](https://github.com/sharkdp/fd)!

### License

[MIT](./LICENSE)
