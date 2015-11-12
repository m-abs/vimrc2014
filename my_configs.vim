if has('nvim')
  runtime! plugin/python_setup.vim
endif

colorscheme peachpuff

set listchars=tab:·\ ,trail:·
set list

set number

if has("folding")
  au FileType javascript setl foldlevel=4
endif

"let g:detectindent_preferred_expandtab = 1
"let g:detectindent_preferred_indent = 2
"autocmd BufReadPost * :DetectIndent

au BufRead,BufNewFile *.scss set filetype=scss
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType typescript setlocal completeopt-=menu

colorscheme murphy

set ffs=unix,dos
set modeline

set tabpagemax=100

" map keys to tabs
nmap <C-t> :tabnew<CR>
imap <C-t> <ESC>:tabnew<CR>i
map <C-t> :tabnew<CR>:E<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
