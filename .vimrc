set tabstop=2
set backspace=2
set shiftwidth=2
set hidden
set autoindent
set number
set laststatus=2
set expandtab
set hlsearch
set modeline

"highlight trailing whitespace
highlight TrailingWhite ctermbg=DarkRed
match TrailingWhite /\s\+$/

highlight ConsoleCode ctermfg=green 
match ConsoleCode /\ccconsole.log/

"macro deletes trailing whitespace
let @z=":s/\\s\\+$//"

filetype on
filetype indent plugin on
syntax on

set listchars=tab:»\ ,eol:¬
"display eol, and tabs
set list
"light blue for comments!
highlight Comment ctermfg=12
"dark blue for EOL markers
highlight NonText ctermfg=4

"Highlight column 80
if exists('+colorcolumn')
  set colorcolumn=80
endif
highlight ColorColumn ctermbg=237
highlight folded ctermfg=183 ctermbg=239


autocmd BufNewFile,BufRead *.md set filetype=markdown
