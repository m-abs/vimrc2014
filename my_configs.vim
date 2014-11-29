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

colorscheme murphy

set ffs=unix,dos
