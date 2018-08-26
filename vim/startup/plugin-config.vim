" airline
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" pymode
let g:pymode = 1
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/home/ehengao/miniconda3/bin/python'
let g:pymode_python = 'python3'
let pymode_folding = 0
let g:ycm_autoclose_preview_window_after_completion=1
let g:pymode_rope=0
" let g:pymode_syntax = 1
" let g:pymode_syntax_all = 1
" let g:pymode_syntax_print_as_function = 1
" let g:pymode_syntax_highlight_self = g:pymode_syntax_all
" MRU
let MRU_Max_Entries = 15
let MRU_Window_Height = 15
let MRU_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
" SimpleFold
let g:SimpylFold_docstring_preview = 1
let g:fastfold_fold_command_suffixes = ['x','X','a','A','o','O','c','C','r','R','m','M','i','n','N']
" YCM
let g:ycm_python_binary_path = 'python'
let g:ycm_server_python_interpreter = 'python'
let g:ycm_min_num_of_chars_for_completion = 1
set completeopt=preview,longest,menu
" Jedi
let g:jedi#use_tabs_not_buffers = 1
" let g:jedi#goto_command = "gd"
" let g:jedi#documentation_command = "K"
 " let g:jedi#usages_command = "gr"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
" let g:jedi#popup_on_dot = 1
" deoplete-go
" let g:deoplete#sources#go#package_dot = 1
" let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
" let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
" let g:deoplete#sources#go#cgo = 1
" let g:deoplete#enable_at_startup = 1
" let g:neocomplete#enable_at_startup = 1
" Supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabLongestEnhanced = 1
autocmd FileType go
    \if &omnifunc != '' |
        \call SuperTabChain(&omnifunc,"<C-x><C-o>") |
    \endif

" Sytastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checker = ['pylint','flake8']
let g:syntastic_enable_perl_checker = 1
" Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
