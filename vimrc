" vim.tiny detection
if v:progname == "vim.tiny"
    finish
endif

"setting space as leader key
let mapleader = " "

"--------------------------  options  ----------------------------------

set laststatus=1 colorcolumn=0
set nonumber norelativenumber

set incsearch hlsearch ruler  wildmenu

set showmode

set nowrap

set textwidth=72

" dont make any .swp files
set noswapfile

" keep the same indentation as the previous line
set autoindent

" idk
set smartindent

" idk
" set smarttab

" keeping this here for now
" set fixendofline

" pressing <Tab> make N spaces
set softtabstop=4

" a <Tab> count for N spaces
set tabstop=4

" how autoindentation should be (set to 0 to use value of tabstop)
set shiftwidth=4

" expand tabs to white spaces
set expandtab

" i hate automatic folding
set foldmethod=manual
set nofoldenable

" this is causing a problem: not able to close Netrw.
" set hidden

" show arabic text in the proper way.
" set termbidi

" set timeout
set timeoutlen=250

" help 'shortmess'
set shortmess=ItT

" formatoptions
set fo-=r   " don't auto-insert comment leader on enter in insert
set fo-=o   " don't auto-insert comment leader on o/O in normal

" idk
set ttyfast

" viminfo
set viminfo='20,<1000,s100

filetype plugin on
" set  sidescroll=999 sidescrolloff=999
" set colorcolumn=80
" set scrolloff=999

"--------------------------  remaps  -----------------------------------

"Goyo
nnoremap <leader>g :Goyo<CR>

"fzf
"source /usr/share/doc/fzf/examples/fzf.vim
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>

"source vimrc
nnoremap <leader>r :source $MYVIMRC<CR>

" open vimrc in new tmux window
nnoremap <leader>e :silent !tmux neww -n vimrc 'vi ~/.vimrc'<CR>

"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

"nnoremap <leader>p :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
nnoremap <leader>s :let s = synID(line('.'), col('.'), 1) \| echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name') " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" make Y consitent with D and C (yank til end)
map Y y$

" disable search highlighting with <C-L> when refreshing screen
nnoremap <silent> <C-L> :nohl<CR><C-L>

" better use of arrow keys, number increment/decrement
nnoremap <up> <C-a>
nnoremap <down> <C-x>
 
" switch between arabic and normal
nnoremap <leader>a :set arabic!<CR>

" toggle linenumber
map <F1> :call ToggleLineNr()<CR>
map <F2> :call ToggleArmor()<CR>

" yank and paste to X clipboard using xclip(1)
map <leader>y :silent .!xclip -i -selection clipboard && xclip -o -selection clipboard<CR>
map <leader>p :silent .!xclip -o -selection clipboard<CR>

"------------------------  syntax highlighting  ------------------------

" mark trailing spaces as errors (from rwxrob)
match Visual '\s\+$'

" just use 16 colors of the terminal ...
set t_Co=16
set background=dark
" colorscheme TNC

hi ColorColumn cterm=NONE ctermbg=235
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=245
hi LineNr cterm=NONE ctermbg=NONE ctermfg=240
hi StatusLine cterm=NONE ctermfg=245 ctermbg=NONE
hi StatusLineNC cterm=NONE ctermfg=240 ctermbg=NONE
hi Normal ctermbg=NONE
hi Special ctermfg=cyan
hi SpecialKey ctermfg=black ctermbg=NONE
hi ModeMsg ctermfg=245 cterm=NONE ctermbg=NONE
hi MoreMsg ctermfg=245 ctermbg=NONE
hi NonText ctermfg=235 ctermbg=NONE
hi ErrorMsg cterm=NONE ctermbg=234 ctermfg=1
hi Error cterm=NONE ctermbg=NONE ctermfg=darkred
hi SpellBad cterm=NONE ctermbg=235 ctermfg=darkred
hi SpellRare ctermbg=235 ctermfg=darkblue cterm=NONE
hi Search ctermbg=234 ctermfg=1
hi Todo ctermbg=236 ctermfg=darkred
hi IncSearch cterm=NONE ctermbg=236 ctermfg=darkred
hi MatchParen ctermbg=236 ctermfg=darkred

"------------------------- functions  ----------------------------------

function ToggleLineNr()
	if &number || &relativenumber
		set nonumber norelativenumber
	else
		set number relativenumber
	endif
endfunction

"----------------------------  Plugins  --------------------------------

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
call plug#end()

"-----------------------------  testing  -------------------------------
set ruf=%50(%=%#ModeMsg#%f\ %y\ %l:%L\ %p%%%)

function ToggleArmor()
    call ToggleLineNr()
    if &number || &relativenumber
        set colorcolumn=80
        set laststatus=2
    else
        set colorcolumn&
        set laststatus&
    endif
endfunction
