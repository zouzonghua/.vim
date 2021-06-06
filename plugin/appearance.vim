"--------------
" appearance
"--------------
set number                  " 显示行号
set cursorline              " 高亮当前选中行
set showtabline=2           " 显示 tab 分页
set cc=80                   " 每行 80 个字符
set linebreak               " 文本换行以文字为单位
" set showcmd                 " 底部显示键入指令
let &t_SI.="\e[5 q"         "SI = INSERT mode
let &t_SR.="\e[4 q"         "SR = REPLACE mode
let &t_EI.="\e[1 q"         "EI = NORMAL mode (ELSE)

"--------------
" split window
"--------------
set splitbelow
set splitright

"--------------
" Scroll
"--------------
set scrolloff=3              " 垂直滚动时，光标距离顶部/底部的位置（单位：行）

"--------------
" Tab and space
"--------------
set tabstop=2                " 按下 Tab 键时，Vim 显示的空格数
set softtabstop=2            " 退格键退回缩进空格的长度
set shiftwidth=2             " 表示每一级缩进的长度
set expandtab                " 设置缩进用空格来表示
set listchars=tab:»■,trail:■ " 多余的空格（包括 Tab 键）显示小方块
set list                     " 显示非可见字符

"--------------
" ColorScheme
"--------------
set t_Co=256                  " 启用256色
syntax on                     " 语法高亮

" ~/.zshrc => source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette_osx.sh"

try
  set background=dark
  colorscheme gruvbox
  highlight EndOfBuffer cterm=NONE ctermfg=bg ctermbg=bg
catch
endtry

