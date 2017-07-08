set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set nocp
set nu

filetype indent on
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab

" 80 charater line
highlight ColorColumn ctermbg=gray
set colorcolumn=81

syntax enable
colorscheme gruvbox
set background=dark

"Youcompleteme fix
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

