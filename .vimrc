filetype plugin indent on
set hlsearch "highlignting search
set nu "line number
set autoindent
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 "scroll bar width
set autowrite " autosave when other file open
set autoread " if the file using is modified from others, autoread
set cindent " C language auto indent
set bs=eol,start,indent
set history=256
set laststatus=2 " status bar always
set paste " eliminate paste stairs
set shiftwidth=4 " auto indent width
set showmatch " highlighting matching parenthesis
set smartcase " case-sensitive
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " show current location of cursor
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" Position the cursor where it was last modified
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" file encoding in Korean
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

" highlighting syntax
if has("syntax")
 syntax on
endif

" colorscheme
colorscheme jellybeans

" move split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set encoding=utf-8
set fileencodings=utf-8,cp949

" git blame shortcut
vmap <Leader>g :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

