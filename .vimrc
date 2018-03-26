" To check out my vim config visit the .config/vim files
for s:file in split(globpath('~/.config/vim', '*_pre.vim'))
  exec "source " . s:file
endfor

call plug#begin('~/.vim/plugged')

for s:file in split(globpath('~/.config/vim', '*_plugins.vim'))
  exec "source " . s:file
endfor

" All of your Plugins must be added before the following line
call plug#end()

for s:file in split(globpath('~/.config/vim', '*_post.vim'))
  exec "source " . s:file
endfor
