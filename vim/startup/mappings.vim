" Unmap the arrow keys
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>
nnoremap  gi :YcmCompleter GoToDefinition<CR>
nnoremap  gr :YcmCompleter GoToReferences<CR>
nnoremap  gd :YcmCompleter GoToDeclaration<CR>
nnoremap  th       :tabfirst<CR>
nnoremap  tj       :tabprevious<CR>
nnoremap  tk       :tabnext<CR>
nnoremap  tl       :tablast<CR>
nnoremap  tn       :tabnew<CR>
nnoremap  tc       :tabclose<CR>
nnoremap  gf       <C-w>vgf
" map <silent> <C-k>b :NERDTreeToggle<CR>
" Strip trailing whitespace (,ss)
function! StripWhitespace()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
    if expand("%:e") == "py"
        execute ':Black'
        execute ':Isort'
    endif
endfunction
noremap  <C-k><C-x> :call StripWhitespace() :call Black()<CR>
map      <C-k>,   <Esc>:vs ~/.vimrc<CR>
noremap <leader>w :w<CR>:mkview<CR>
" map <silent> <C-k>t :TlistToggle<CR>
map <C-k>b :NERDTreeTabsToggle<CR>
map <C-k>f :NERDTreeFind<CR>
map <silent> <C-k>r :MRUToggle<CR>

let g:SuperTabMappingForward = '<S-tab>'
let g:SuperTabMappingBackward = '<tab>'
" ctrlp
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
nnoremap <C-k>i :Isort<CR>
nnoremap <F8> :try<bar>lnext<bar>catch /^Vim\%((\a\+)\)\=:E\%(553\<bar>42\):/<bar>lfirst<bar>endtry<cr>

