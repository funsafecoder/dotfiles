" This file is for vim-plug plugins and is sourced between plug#begin and
" plug#end

" Gotham theme
Plug 'whatyouhide/vim-gotham'

" Surround because yes
Plug 'tpope/vim-surround'

" Add support for the Argument object
Plug 'b4winckler/vim-angry'

" Airline plugin config
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='gotham'

" PaperColors
Plug 'NLKNguyen/papercolor-theme'

if !has('nvim')
  " Replaced by Denite in nvim
  Plug 'kien/ctrlp.vim'

  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore .git
        \ --ignore .svn
        \ --ignore .hg
        \ --ignore .DS_Store
        \ --ignore "**/*.pyc"
        \ --ignore .git5_specs
        \ --ignore review
        \ -g ""'

  let g:ctrlp_command = 'CtrlPMixed'
  let g:ctrlp_custom_ignore = {
    \ 'dir': '\.(git|svn|hg)$\|_site\|\.jsexe$\|node_modules$',
    \ 'file': '\v\.(o|hi|js_o|js_hi|dyn_hi|dyn_o)',
    \ }
  let g:ctrlp_working_path_mode = 0
  let g:ctrlp_root_markers = ['.ctrlp_root']
  let g:ctrlp_max_files = 30000
  let g:ctrlp_follow_symlinks = 2
  let g:ctrlp_switch_buffer = 2
  nmap <C-b> :CtrlPBuffer<CR>
  nmap <C-l> :CtrlPLine<CR>
endif

if has('nvim')
  " Denite file and sources search
  Plug 'Shougo/denite.nvim'
endif

" P4 Support
Plug 'mhinz/vim-signify'
let g:signify_vcs_list = ['git', 'perforce', 'hg']
let g:signify_vcs_cmds = {
    \ 'perforce': 'p4 info >& /dev/null && env G4MULTIDIFF=0 P4DIFF=%d p4 diff -dU0 %f'
    \ }

Plug 'christoomey/vim-tmux-navigator'

Plug 'pangloss/vim-javascript'

Plug 'tpope/vim-repeat'

" Better filebrowsing
Plug 'tpope/vim-vinegar'

" For easy motion
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Ag integration
Plug 'gabesoft/vim-ags'

" Bracketed paste support
Plug 'ConradIrwin/vim-bracketed-paste'
