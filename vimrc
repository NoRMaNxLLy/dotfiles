"setting space as leader key
let mapleader = " "

set nu  incsearch  hlsearch  ruler  relativenumber  wildmenu  noswapfile  hidden  shiftwidth=4 softtabstop=4 tabstop=4 expandtab laststatus=2

set scrolloff=999
" show arabic text in the proper way.
" set termbidi

" set timeout
set timeoutlen=250

" from TFL
set nowrap
" set  sidescroll=999 sidescrolloff=999
set colorcolumn=80

"Goyo
nnoremap <leader>g :Goyo<CR>

"fzf
"source /usr/share/doc/fzf/examples/fzf.vim
nnoremap <leader>f :FZF<CR>
nnoremap <leader>b :Buffers<CR>

"source vimrc
nnoremap <leader>r :source $MYVIMRC<CR>

"edit vimrc
" nnoremap <leader>e :wincmd v<bar> :e $MYVIMRC<CR>

" open vimrc in new tmux window
nnoremap <leader>e :!tmux neww -n vimrc 'vi ~/.vimrc'<CR>

"changing buffers
map <C-n> :bnext <CR>
map <C-p> :bprevious <CR>

" colorscheme
set background=dark
colorscheme TNC

"nnoremap <leader>p :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
nnoremap <leader>p :let s = synID(line('.'), col('.'), 1) \| echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name') " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" latex compile
map <silent><leader>c :w! \| !xelatex "<c-r>%"<CR>

" make Y consitent with D and C (yank til end)
map Y y$

" disable search highlighting with <C-L> when refreshing screen
nnoremap <C-L> :nohl<CR><C-L>

" disable search highlighting with <C-L> when refreshing screen
nnoremap <silent> <C-L> :nohl<CR><C-L>

" better use of arrow keys, number increment/decrement
nnoremap <up> <C-a>
nnoremap <down> <C-x>

" switch between arabic and normal
nnoremap <leader>a :set arabic!<CR>


"""""""""""""""""""""""""""""""""
"#######PLUGINS#######
"""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/goyo.vim'
call plug#end()
