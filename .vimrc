:set tabstop=2
:set ts=2
:set shiftwidth=2
:set expandtab
:set nowrap
:set nocompatible
:set list
:set hls
:set autowrite

syntax on
filetype plugin indent on
:set number
autocmd BufWritePre * :%s/\s\+$//e
:set wrap
let g:syntastic_enable_signs=1

" Show end of line spaces
 set list
 set listchars=trail:.


function! ClearEOLSpaces()
    :silent! %s/^\s\+$//
    :silent! %s/\s\+$//
endfunction

function! FixTabs()
    :silent! %retab
endfunction

" Convenience shortcuts
 map <Leader><Space> :call ClearEOLSpaces()<CR>
 map <Leader><Tab> :call FixTabs()<CR>

