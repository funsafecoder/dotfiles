" Common vim config to source

" Enable modern Vim features not compatible with Vi spec.
set nocompatible

" set Vim-specific sequences for RGB colors
if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
