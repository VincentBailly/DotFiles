call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'rakr/vim-one'
Plug 'kovetskiy/sxhkd-vim'

call plug#end()

" coc settings
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=500
set shortmess+=c

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction


" Set the theme
colorscheme one
set termguicolors
set background=dark
" hi Normal guibg=NONE ctermbg=NONE

set shiftwidth=2
set expandtab
set shiftwidth=2

highlight Normal ctermbg=none
highlight NonText ctermbg=none
