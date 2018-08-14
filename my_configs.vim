"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:
"       Weibin Zeng
"
"
" Version:
"       0.9 - 01/04/17 14:24:34
"
"
" Sections:
"    -> General
"    -> VIM user interface
"    -> Colors and Fonts
"    -> Files and backups
"    -> Text, tab and indent related
"    -> Visual mode related
"    -> Moving around, tabs and buffers
"    -> Status line
"    -> Editing mappings
"    -> vimgrep searching and cope displaying
"    -> Spell checking
"    -> Misc
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add general file encodings
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
" turn off compatible with vi
set nocp
" display line number
set nu
" autosave set, 5 min every time
let autosave=300
" automatically remove all trailing whitespace
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" for java indent
au FileType java setl sw=4 sts=4 et

" 80 charater line
highlight ColorColumn ctermbg=11
set colorcolumn=81

syntax enable
colorscheme gruvbox
set background=light
let g:gruvbox_contrast = 'soft'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>y "+y
map <leader>p "+p
