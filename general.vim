" Best options for changing text
set cpoptions+=$

" To use the system clipboard (xclip)
set clipboard=unnamed,unnamedplus

let base16colorspace=256

set background=dark
colorscheme zenburn

" set background=light
" colorscheme base16-solarized-light

" Indent
set tabstop=2      " number of visual spaces per TAB.
set shiftwidth=2   " number of spaces to use for each step of (auto)indent.
set softtabstop=2  " number of spaces in tab when editing.
set shiftround     " round indent to multiple of 'shiftwidth'
set expandtab      " tabs are spaces
set smarttab
set autoindent
set copyindent
set smartindent
set colorcolumn=100
" set relativenumber
set nowrap
set encoding=utf-8
set fileencoding=utf-8

" Show non visual chars
set listchars=trail:~,tab:▸\ ,eol:¬ " show special characters
set list

" Search niceties
set inccommand=split

" configuration for netrw
let g:netrw_liststyle= 3

" Make text width 80 chars long on markdown files
autocmd FileType markdown call SetMarkdownOptions()

" If overwrite the SetMarkDownOptions function if it exists
function! SetMarkdownOptions()
  setlocal textwidth=79
  setlocal spell spelllang=en_us
  setlocal noshiftround
endfunction


autocmd FileType elm call SetElmOptions()

function! SetElmOptions()
  setlocal shiftwidth=4
  setlocal softtabstop=2
  setlocal expandtab
endfunction

autocmd FileType elixir call SetElixirOptions()

function! SetElixirOptions()
  setlocal formatprg=
  setlocal foldmethod=indent
endfunction

" let g:LanguageClient_serverCommands = {
"    \ 'reason': ['ocaml-language-server', '--stdio'],
"    \ 'ocaml': ['ocaml-language-server', '--stdio'],
"    \ }

" Add spell check to git commits
autocmd FileType gitcommit setlocal spell spelllang=en_us

" Improve the files autocomplete
autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

" Typescript
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

" Folding
set foldmethod=syntax
set nofoldenable

" Configure backupfiles
set backup
set backupdir   =$HOME/.config/nvim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.config/nvim/files/swap/
set updatecount =100
set undofile
set undodir     =$HOME/.config/nvim/files/undo/
set viminfo     ='100,n$HOME/.config/nvim/files/info/viminfo

" Don't loose selection when shifting
xnoremap <  <gv
xnoremap >  >gv
