" VUNDLE REQUIRED??:
set nocompatible              " be iMproved, required
filetype off                  " required

" Experimental control-c to esc:
" vnoremap <C-c> <Esc>
inoremap <C-c> <Esc>

" Experimental command line options
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set :find to run recursively
set path+=**
" set relative and absolute line number also lose rnu after losing focus
set nu rnu
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.{{{
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}}}}
Plugin 'philips/eink.vim.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'takac/vim-hardtime'
" Bundle 'git@github.com:philips/eink.vim.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin indent on
syntax on
set omnifunc=syntaxcomplete#Complete
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set number
syntax on
set foldmethod=marker
set colorcolumn=79
call dasung#Dasung()
color bw

" auto complete like bash but more
set wildmode=longest,list,full
" set completeopt=menu,longest
set wildmenu


autocmd CompleteDone * pclose
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 1


" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {"mode": "passive"}
let g:syntastic_warning_symbol=">"
let g:syntastic_error_synbol=">>"
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>'
" dumps log to messages
" let g:syntastic_debug = 3
" let g:syntastic_debug_file = "~/.vim/syntastic.log"
"syntastic_reuse_loc_lists let g:syntastic_reuse_loc_lists = 0
let g:syntastic_loc_list_height = 4

" I made dis variable
let g:syntastic_cmd_height_variance = 0

" hardtime related:
let g:hardtime_default_on = 1
set hlsearch
