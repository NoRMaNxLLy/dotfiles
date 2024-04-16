"setting space as leader key
let mapleader = " "

" --- options

set laststatus=1
set nonumber norelativenumber
set colorcolumn=80
set incsearch hlsearch ruler wildmenu
set showmode showcmd
set nowrap
set textwidth=72
set noswapfile
set autoindent
set smartindent
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
" set hidden
set timeoutlen=500
set shortmess=ItTF

set fo-=r   " don't auto-insert comment leader on enter in insert
set fo-=o   " don't auto-insert comment leader on o/O in normal

" viminfo
set viminfo='20,<1000,s100,h

" ruler format
set ruf=%50(%=%#Normal#%f\ %y\ %LL\ %l:%c%)

" enable omni-completion
set omnifunc=syntaxcomplete#Complete
set completeopt=menu

set cmdheight=2

filetype plugin on

" --- remaps

"fzf source /usr/share/doc/fzf/examples/fzf.vim
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>

"source vimrc
nnoremap <leader>r :source $MYVIMRC<CR>

nnoremap <leader>s :let s = synID(line('.'), col('.'), 1) \| echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name') " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" make Y consitent with D and C (yank til end)
map Y y$

nnoremap <silent> <C-L> :nohl<CR><C-L>

" switch between arabic and normal
nnoremap <leader>a :call ToggleArabic()<CR>

" toggle linenumber
map <F1> :call ToggleLineNr()<CR>
map <F2> :call ToggleArmor()<CR>

" yank and paste to X clipboard
map <leader>y :silent .w !toclip <CR>
map <leader>p :silent r !fromclip<CR>

" --- syntax

" mark trailing spaces as errors
match SpellBad '\s\+$'

set termguicolors
set background=dark
syntax on
colorscheme nord

hi Normal ctermbg=NONE guibg=NONE

" --- functions

function ToggleLineNr()
	if &number || &relativenumber
		set nonumber norelativenumber
	else
		set number relativenumber
	endif
endfunction

function ToggleArmor()
    call ToggleLineNr()
    if &number || &relativenumber
        set colorcolumn=80
        set laststatus=2
    else
        set colorcolumn=0
        set laststatus&
    endif
endfunction

function ToggleArabic()
    if ! &arabic
        set arabic
        set nospell
    else
        set noarabic
        set spell
    endif
endfunction

" --- plug

call plug#begin('~/.vim/plugged')
Plug 'natebosch/vim-lsc'
Plug 'vim-pandoc/vim-pandoc-syntax'
call plug#end()

" --- auto commands

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END


" --- vim-lsc ---

let g:lsc_server_commands = {
            \ 'c': {'command': 'clangd', 'suppress_stderr': v:true},
            \ 'cpp': {'command': 'clangd', 'suppress_stderr': v:true, 'log_level': 'Warning'},
            \ 'go': {'command': 'gopls serve', 'suppress_stderr': v:true, 'log_level': -1},
            \ }
let g:lsc_auto_map = {'defaults': v:true, 'Completion': 'omnifunc'}
let g:lsc_enable_autocomplete = v:false
let g:lsc_complete_timeout = 1
let g:lsc_diagnostic_highlights = v:true
let g:lsc_reference_highlights = v:false
let g:lsc_change_debounce_time= 1000

" --- testing
