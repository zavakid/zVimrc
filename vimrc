" pathogen
call pathogen#infect()
syntax on
filetype plugin indent on
au BufRead,BufNewFile *.json  setfiletype javascript
au BufNewFile,BufRead *.gradle setf groovy

set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1,big5
set termencoding=utf-8
set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set wrap

colorscheme desert

command -nargs=? Sudow :w! !sudo tee %

" 底部显示状态
set laststatus=2
set statusline=%F:\ %l

" for fuzzyfinder
map <C-S-p> :FufCoverageFile<cr>
map <C-S-o> :FufBuffer<cr>
let g:fuf_coveragefile_prompt = '=>'
:highlight Pmenu ctermbg=238 gui=bold
" hi Pmenu ctermfg=0 ctermbg=6 guibg=#444444
:hi PmenuSel ctermfg=7 ctermbg=4 " guibg=#555555 guifg=#ffffff

""""""""""""""""""""""""""""""
" Tag list (ctags)
" """"""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

let Tlist_Show_One_File = 1
" "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1
" "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 



