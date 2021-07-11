set nobackup
winpos 0 0                                                  " set the default position of the vim window
set lines=58 columns=237                                    " set the default size of the vim window
colorscheme evening									        " set colorscheme
" colorscheme options: torte, molokai, phd
set isfname+={,}                                            " make it can distinguish the filename
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  " encoding format
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set nobackup
set noswapfile
set showmode
set showmatch
set smartindent
set cursorline                                              " set
set selection=exclusive
set selectmode=mouse,key
set autoread												" set autoread when current files are modified.
set completeopt=preview,menu								" codes complement
set clipboard+=unnamed										" share paste pad
set makeprg=g++\ -Wall\ \ %								    " make excute.
set autowrite												" save automatically
set cursorline												" hightlight current line
set magic                   								" set magic
set guioptions-=T           								" hide tool list
set guioptions-=m           								" hide menu list
" set go=
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
set foldcolumn=0
set wrap                                                    " 折行
set foldlevel=3												" 设置在状态行显示的信息
set syntax=on												" 语法高亮
set noeb													" 去掉输入错误的提示声音
set confirm                                                 " 在处理未保存或只读文件的时候，弹出确认
set autoindent												" 自动缩进
set cindent
set tabstop=4												" Tab键的宽度
set softtabstop=4											" 统一缩进为4
set shiftwidth=4
set noexpandtab												" 不要用空格代替制表符
set smarttab												" 在行和段开始处使用制表符
set number													" 显示行号
set history=1000											" 历史记录数
set nosol                                                   " Jump to onther line but not at the start of the column.
set noundofile												" No undo file
set ignorecase												" 搜索忽略大小写
set hlsearch												" 搜索逐字符高亮
set incsearch                                               " highligt search
set gdefault												" substitute in a line
set enc=utf-8												" setting coding format
set langmenu=zh_CN.UTF-8                                    " set language
set helplang=cn
set laststatus=2                                            " always display command line.
set cmdheight=2                                             " the height of command line, the default value is 1, it sets to 2 now
set mouse=a
set shortmess=atI									        " 启动的时候不显示 援助乌干达儿童的提示
set ts=4                                                    " tab键代表四个空格
set expandtab										        " 用四个空格对应tab
autocmd FileType make set noexpandtab                       " Don't expand tab for Makefile
autocmd InsertLeave * se nocul  					        " 用浅色高亮当前行
autocmd InsertEnter * se cul    					        " 用浅色高亮当前行
set ruler           								        " 显示标尺
set showcmd         								        " 输入的命令显示出来，看的清楚些
set whichwrap+=<,>,h,l   							        " 允许backspace和光标键跨越行边界(不建议)
set scrolloff=2     								        " 光标移动到buffer的顶部和底部时保持3行距离
set novisualbell    								        " 不要闪烁(不明白)
set foldenable      								        " 允许折叠
set foldmethod=manual   							        " 手动折叠, set foldmethod=indent
set nofoldenable                                            " 启动 vim 时关闭折叠代码
set background=dark									        " 背景使用黑色
set nocompatible									        " 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
syntax on                                                   " hightlight keyword


" au Bufread *.* set guifont=Menlo-Regular:h14                " used for MacVim, solved the problem you can set font directly.
" if (has("gui_running"))                                     " used for font, but it doesn't work for this macbook pro
"     set guifont=Consolas\ Vera\ Sans\ Mono\ 14
"     set guifont=Menlo-Regular:h14                           " used for MacVim, solved the problem you can set font directly.
" endif

autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py,*.sv,*.v exec ":call SetTitle()"
func SetTitle()
    "如果文件类型为.sh文件
    if &filetype == "sh"
        call setline(1,"\#!/bin/bash -l")
        call append(line("."), "# ".strftime("%c"))
        call append(line(".")+1, "")
    elseif &filetype == 'python'
        call setline(1,"\#!/usr/bin/python3")
        call setline(2,"# coding=utf-8")
        call append(line(".")+1, "")
    else
        call setline(1,"/**************************************************************************")
        call append(line("."), " File Name:     ".expand("%"))
        call append(line(".")+1, " Author:        wuguang")
        call append(line(".")+2, " E-mail:        wuguang20084520@163.com")
        call append(line(".")+3, " Created Time:  ".strftime("%c"))
        call append(line(".")+4, " Release Notes: ")
        call append(line(".")+5, " **************************************************************************/")
    endif
    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include <iostream>")
        call append(line(".")+7, "int main()")
        call append(line(".")+8, "{")
        call append(line(".")+9, "    using namespace std;")
        call append(line(".")+10, "")
        call append(line(".")+11, "    return 0;")
        call append(line(".")+12, "}")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef ".toupper(expand("%:r"))."_H_")
        call append(line(".")+7, "#define ".toupper(expand("%:r"))."_H_")
        call append(line(".")+8, "#endif")
    endif
    if expand("%:e") == 'sv'
        call append(line(".")+6, "`ifndef ".toupper(expand("%:r"))."__SV")
        call append(line(".")+7, "`define ".toupper(expand("%:r"))."__SV")
        call append(line(".")+8, "`endif")
    endif
    if &filetype == 'java'
        call append(line(".")+6, "public class ".expand("%:r"))
        call append(line(".")+7, "")
    endif
endfunc

"New file, locating to the end the file
autocmd BufNewFile * normal G

nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR> "设置键盘映射，通过空格设置折叠

set fillchars=vert:/ "被分割窗口之间显示空白
set fillchars=stl:/
set fillchars=stlnc:/

" vundle 环境设置
" set rtp+=~/.vim/bundle/Vundle.vim

" vundle管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'tomasr/molokai'
" Plugin 'vim-scripts/phd'
" Plugin 'Lokaltog/vim-powerline'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'Raimondi/delimitMate'
" 插件列表结束
" call vundle#end()

filetype on                                                 " 侦测文件类型
filetype plugin on                                          " 载入文件类型插件
filetype indent on                                          " 为特定文件类型载入相关缩进文件
" filetype plugin indent on

" 配色方案
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
syntax keyword cppSTLtype initializer_list

" au BufWrite /private/tmp/crontab.* set nowritebackup nobackup   " Don't write backup file if vim is being called by "crontab -e"
" au BufWrite /private/etc/pw.* set nowritebackup nobackup        " Don't write backup file if vim is being called by "chpass"

" Add in 2020
iab nt <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
iab xt <c-r>=strftime("%Y-%m-%d")<cr>

"----------------------------------------------------------------------------------
" plugin -miniBufExpl.vim, setup for the colors.
"----------------------------------------------------------------------------------

let g:minBufExplMapWindowNavVim = 1                         " ctrl+h/j/k/l can switch the window
let g:minBufExplMapWindowNavArrows = 1                      " ctrl+arrow can switch the window
let g:minBufExplMapCTabSwitchBufs = 1                       " ctrl+Tab, move to next tag and open, ctrl+shift+tab, Move to previous tag and open
let g:minBufExplMapCTabSwitchWindows = 1                    " ctrl+Tab, move to next tag and open, ctrl+shift+tab, Move to previous tag and open
let g:minBufExplModSelTarget = 1                            " Don't open file in miniBufExpl.
let g:did_minbufexplorrer_syntax_inits = 1                  " 
hi MBENormal                guifg=#EE81FF       guibg=#F8F8F0
hi MBEChanged               guifg=#66D9EF       guibg=#F8F8F0
hi MBEVisibleNormal         guifg=#BCA3A3       guibg=#F8F8F0
hi MBEVisibleChanged        guifg=red           guibg=#F8F8F0
hi MBEVisibleActiveNormal   guifg=green         guibg=#F8F8F0
hi MBEVisibleActiveChanged  guifg=#E6DB74       guibg=#F8F8F0

