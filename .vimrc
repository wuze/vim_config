"  我的Vim配置

" 以下是基本配置 start`
" =================================================
" =================================================
" =================================================

" 设置修改完以后立即生效
autocmd! bufwritepost .vimrc source ~/.vimrc

"禁用VI兼容模式
set nocompatible

"Vim 的内部编码
set encoding=utf-8

"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8

"Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8

"Vim 打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1

"设置中文帮助
set helplang=cn

" 鼠标光标
set cursorline
set cursorcolumn
hi cursorline  cterm=NONE   ctermbg=darkred ctermfg=white
hi cursorcolumn cterm=NONE ctermbg=darkred ctermfg=white

syntax on                           " highlight syntax
filetype plugin indent on           " auto detect file type

set nocompatible                    " out of Vi compatible mode
set number                          " show line number
set numberwidth=3                   " minimal culumns for line numbers
set textwidth=0                     " do not wrap words (insert)
set nowrap                          " do not wrap words (view)
set showcmd                         " show (partial) command in status line
set ruler                           " line and column number of the cursor position
set wildmenu                        " enhanced command completion
set wildmode=list:longest,full      " command completion mode
set laststatus=2                    " always show the status line
"set mouse=a                         " use mouse in all mode
set foldenable                      " fold lines
set foldmethod=marker               " fold as marker 
set noerrorbells                    " do not use error bell
set novisualbell                    " do not use visual bell
set t_vb=                           " do not use terminal bell

set wildignore=.svn,.git,*.swp,*.bak,*~,*.o,*.a
set autowrite                       " auto save before commands like :next and :make
set hidden                          " enable multiple modified buffers
set history=100                     " record recent used command history
set autoread                        " auto read file that has been changed on disk
set backspace=indent,eol,start      " backspace can delete everything
set completeopt=menuone,longest     " complete options (insert)
set pumheight=10                    " complete popup height
set scrolloff=5                     " minimal number of screen lines to keep beyond the cursor
set autoindent                      " automatically indent new line
set cinoptions=:0,l1,g0,t0,(0,(s    " C kind language indent options

set tabstop=4                       " number of spaces in a tab
set softtabstop=4                   " insert and delete space of <tab>
set shiftwidth=4                    " number of spaces for indent
set expandtab                       " expand tabs into spaces
set incsearch                       " incremental search
set hlsearch                        " highlight search match
set ignorecase                      " do case insensitive matching
set smartcase                       " do not ignore if search pattern has CAPS
set nobackup                        " do not create backup file
set noswapfile                      " do not create swap file
set backupcopy=yes                  " overwrite the original file
" =================================================
" =================================================
" =================================================
" 以上是基本配置 end


" vundle 插件管理的安装 用来管理插件
" git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
"

set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" 可以通过以下四种方式指定插件的来源
" a) 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用"-”代替。
Bundle 'L9'

" b) 指定Github中其他用户仓库的插件，使用"用户名/插件名称”的方式指定
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'

" c) 指定非Github的Git仓库的插件，需要使用git地址
Bundle 'git://git.wincent.com/command-t.git'

" d) 指定本地Git仓库中的插件
Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!







