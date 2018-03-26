
" Denite setup
if has('nvim')
  " Change file_rec command. (To use ag)
  call denite#custom#var('file_rec', 'command',
  \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

  " Change mappings.
  " Docs didn't say what default mappings are
  call denite#custom#map(
        \ 'insert',
        \ '<C-j>',
        \ '<denite:move_to_next_line>',
        \ 'noremap'
        \)
  call denite#custom#map(
        \ 'insert',
        \ '<C-k>',
        \ '<denite:move_to_previous_line>',
        \ 'noremap'
        \)

  " Ag command on grep source
  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'default_opts',
                  \ ['-i', '--vimgrep'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  call denite#custom#alias('source', 'file_rec/hg', 'file_rec')
  call denite#custom#var('file_rec/hg', 'command',
  \ ['hg', 'files'])

  " My mappings
  nnoremap <C-p> :Denite file_rec -auto-resize -ignorecase -highlight-mode-insert=Search<cr>
endif

" EasyMotion setup
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
vmap s <Plug>(easymotion-overwin-f)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

colorscheme gotham
set termguicolors
set background=dark
" hi WarningMsg ctermfg=238 ctermbg=5 term=bold

filetype plugin indent on
syntax on

set so=10
set nu
set ignorecase
set smartcase

let mapleader=","
"
" Keep exiting from normal mode from taking so long
set timeoutlen=1000 ttimeoutlen=0

" Get vim to use our bash aliases
if !empty(glob('~/.bash_aliases'))
  let $BASH_ENV = "~/.bash_aliases"
endif

" Set up window movement
noremap <c-j> <c-w>j
noremap <c-h> <c-w>h
noremap <c-l> <c-w>l
noremap <c-k> <c-w>k

if has("nvim")
  tnoremap <Esc> <c-\><c-n>
  tnoremap <c-j> <c-w>j
  tnoremap <c-h> <c-w>h
  tnoremap <c-l> <c-w>l
  tnoremap <c-k> <c-w>k
endif

augroup LongLines
  autocmd!
  autocmd FileType * match ColorColumn /\%>80v.\+/
  autocmd FileType java match ColorColumn /\%>100v.\+/
augroup END

set hlsearch
set incsearch

" Don't use regular pipe for window separators which looks bad
set fillchars+=vert:│
