filetype plugin indent on
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set hlsearch
set number

" Visual aid
fun! Toggle80line()
    if &colorcolumn == 0
        set colorcolumn=80
    else
        set colorcolumn=0
    endif
endfun

nnoremap <C-l> :call Toggle80line()<CR>
call plug#begin()
	" NERDTree
	Plug 'scrooloose/nerdTree', {'on': 'NERDTreeToggle'}
	nmap <C-n> :NERDTreeToggle<CR>
	" Markdown
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mdkp#util#install() }, 'for': ['markdown', 'vim-plug'] }
	runtime .vim/markdown_prev.vim
	nmap <C-b> :MarkdownPreview<CR>
call plug#end()
