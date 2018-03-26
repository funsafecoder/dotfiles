
# My Dotfiles

## Vim setup
In order to get the vim setup to work properly, be sure to copy all .vim files
over to .config/vim. The .vimrc automatically sources from there in three phases
based on the names of the vim files. It also assumes that Plug is installed.

### vim-plug quick install
https://github.com/junegunn/vim-plug#unix

### File naming convention
The .vimrc expects files to be named with one of three suffixes:
- _pre.vim : Run before call to plug#begin
- _plugins.vim : Run after call to plug#begin, but after plug#end
- _post.vim : Run after call to plug#end

The file names can begin with anything you'd like, so use that to get organized.
