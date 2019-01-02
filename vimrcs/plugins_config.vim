"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/bundle/{}')
call pathogen#helptags()


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee|^\bundle'
" open ctrlp use file search mode
" map <Leader>j :CtrlP<cr>
" open ctrlp use buffer search mode
map <c-b> :CtrlPBuffer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize=32
let NERDTreeShowHidden=0
let NERDTreeMinimaUI=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeAutoDeleteBuffer=1
map <Leader>nn :NERDTreeToggle<cr>
map <Leader>nb :NERDTreeFromBookmark<Space>
map <Leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


""""""""""""""""""""""""""""""
" => markdown-preview
""""""""""""""""""""""""""""""
let g:mkdp_path_to_chrome = 'chromium-browser'
let g:mkdp_refresh_slow = 1  " refresh in :w or norm
map <C-m> <Plug>MarkdownPreview


""""""""""""""""""""""""""""""
" => Youcompleteme
""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" completion in comments
let g:ycm_complete_in_comments=1

" allow vim load .ycm_extra_cong.py without prompt
let g:ycm_comfirm_extra_conf=0

" enable complete from tags file
let g:ycm_collect_identifiers_from_tags_files=1
set tags+=~/.vim/vimrcs/stdcpp.tags

" OmniCppComplete shotcut
inoremap <Leader>; <C-x><C-o>

" disable the preview window
set completeopt-=preview

" start complete from firt char
let g:ycm_min_num_of_chars_of_completion=1

" disable completion cache
let g:ycm_cache_omnifunc=0

" complete seed identifiers with syntax
let g:ycm_seed_identifiers_with_syntax=1

" Goto declaration / Definition
nnoremap <Leader>jc :YcmCompleter GoToDeclaration<cr>
nnoremap <Leader>jd :YcmCompleter GoToDefinition<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DoxygenToolkit 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:gitgutter_enabled=0
nnoremap <silent> <Leader>do :Dox<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctrlsf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>g :CtrlSF<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent Guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" startup with vim
" let g:indent_guides_enables_on_vim_startup=1

" set indent start level
" let g:indent_guides_start_level=2

" set size
" let g:indent_guides_size=2

" start/close mapping
" nnoremap <silent> <Leader>i <Plug>IndentGuidesToggle


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FSwitch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufEnter *.h let b:fswitchdst='cpp,cc'
nnoremap <silent> <Leader>sw :FSHere<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Protodef
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set pullproto.pl path
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'

" definition and declaration same 
let g:disable_protodef_sorting=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>bl :MBEToggle<cr>

" buffer tab
map <leader>bn :MBEbn<cr>
map <leader>bp :MBEbp<cr>


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <Leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
"let MRU_Max_Entries = 400
"map <Leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
"nmap <c-p> <Plug>yankstack_substitute_older_paste
"nmap <c-P> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
"let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
"ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
"snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
"let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
"set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:lightline = {
      "\ 'colorscheme': 'wombat',
      "\ }

"let g:lightline = {
      "\ 'colorscheme': 'wombat',
      "\ 'active': {
      "\   'left': [ ['mode', 'paste'],
      "\             ['fugitive', 'readonly', 'filename', 'modified'] ],
      "\   'right': [ [ 'lineinfo' ], ['percent'] ]
      "\ },
      "\ 'component': {
      "\   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      "\   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      "\   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      "\ },
      "\ 'component_visible_condition': {
      "\   'readonly': '(&filetype!="help"&& &readonly)',
      "\   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      "\   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      "\ },
      "\ 'separator': { 'left': ' ', 'right': ' ' },
      "\ 'subseparator': { 'left': ' ', 'right': ' ' }
      "\ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:goyo_width=100
"let g:goyo_margin_top = 2
"let g:goyo_margin_bottom = 2
"nnoremap <silent> <Leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
"let g:syntastic_python_checkers=['pyflakes']

"" Javascript
"let g:syntastic_javascript_checkers = ['jshint']

"" Go
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

"" Custom CoffeeScript SyntasticCheck
"func! SyntasticCheckCoffeescript()
    "let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    "execute "tabedit " . l:filename
    "execute "SyntasticCheck"
    "execute "Errors"
"endfunc
"nnoremap <silent> <Leader>c :call SyntasticCheckCoffeescript()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:gitgutter_enabled=0
"nnoremap <silent> <Leader>d :GitGutterToggle<cr>
