" Don't allow scripts to mess with my .vimrc
set secure

" Highlight all columns after textwidth (80).
function! HighlightTooLongLines()
  highlight def link RightMargin Error
  if &textwidth != 0
    exec ('match RightMargin /\%>' . &textwidth . 'v.\+/')
  endif
endfunction

augroup highlight_toolong2
  au! 
  au WinEnter,BufNewFile,BufRead * call HighlightTooLongLines()
augroup END 
" End column highlighting.

" Backups
set directory=$HOME/.vimbak
set backup writebackup
set backupdir=$HOME/.vimbak
set backupskip=/tmp/*,/var/tmp/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set history=200

" Store in .viminfo: marks for 50 files, 200 lines of registers
set viminfo='50,\"200
set updatecount=40  " Number of chars typed before updating swapfile
set updatetime=1000  " Milliseconds before updating swapfile
set suffixes=.bak,~,.o,.swp

" Attempt to get sane indenting
set shiftwidth=2
set expandtab
set tabstop=2
set autoindent
set smartindent

" Disable automatic line wrapping.
set formatoptions-=t

" Helper stuff
set background=dark
set backspace=indent,eol,start
set hlsearch
set ignorecase  " I hate search failing on case sensitivity.
set incsearch
set number
set ruler
set showcmd
set showmode
set smarttab
set term=xterm
set title
set titleold=Terminal  " Stop post-edit pollution of my terminal's title bar.
set visualbell
syntax enable  " Set to 'on' to force syntax where it may be overriden.

" Tab completion of file names.
set wildmenu wildmode=longest:full
