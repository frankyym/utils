syntax on
set autoread
set nocp
set bs=indent,eol,start  " Set backspace

filetype plugin on
let g:pydiction_location = '/Users/yuanming/Dropbox/Archive/QuickRecover/vimfiles/other/complete-dict'

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Tag search and generated(F3)
set tags=./tags;/,$HOME/vimtags
"map<F3> :w !ctags -R<CR>
map<F3> :w !ctags *<CR>

" Indent and tab
filetype indent on
set autoindent
set si " smart indent
"set ci
set tabstop=4
set shiftwidth=4  "auto-indent amount when using cindent
set guifont=Menlo:h17

" Search 
set hlsearch
set incsearch
set ignorecase

color desert " Theme
set nu "turn on line number
set ruler " Always show current positions along the bottom
set cursorline

"------------------------------------------------------------------------
" Setting for python
"------------------------------------------------------------------------

" Press F8 to run current file.
autocmd BufRead,BufNewFile *.py map <F8> :% w !python<CR>

" Use V to select lines and press f to run the selected code block.
autocmd BufRead,BufNewFile *.py vmap f :w !python<CR>

" Follow Python coding style: use four spaces to indent codes.
autocmd BufRead,BufNewFile *.py set sw=4 tabstop=4 smarttab expandtab

" Press ddd to insert codes that call IPython to help debug.
" could only run by console instead of vim env
imap ddd import IPython
\<CR>IPython.Shell.IPShellEmbed()()
