set nocompatible                                   "We want the latest Vim settings/options.

so ~/.vim/plugins.vim

set tabstop=4                                      "Show existing tab with 4 spaces width
set shiftwidth=4                                   "When indenting with '>', use 4 spaces width
set expandtab                                      "On pressing tab, insert 4 spaces
set softtabstop=4
set backspace=indent,eol,start                     "Make backspace behave like every other editors.
syntax enable

let mapleader = ','                                "The default leader is \ but a comma is much better.
set number                                         "Let's activate line number
set linespace=10                                   "Macvim-specific line-height.





"-----------------Visuals---------------"

colorscheme atom-dark-256
set t_Co=256                                       "Use 256 colors. This is useful for Terminal Vim.
set guifont=Fira_Code:h15

set guioptions-=l                                  "Remove left-hand scroll
set guioptions-=L
set guioptions-=r                                  "Remove right-hant scroll
set guioptions-=R





"-----------------Search----------------"

set hlsearch                                      "Highlight search terms
set incsearch                                     "Find as you type
set ignorecase                                    "Case Insensitive search
set smartcase                                     "Case sensitive when uc present





"-----------------Splits ---------------"

set splitbelow
set splitright

"splits maping to have Ctrl left/up/right/down
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"----------------Mappings---------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <Leader>kb :NERDTreeToggle<cr>

"Make jk escape INSERT mode
:inoremap jk <esc>

"Prevent me from using the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>




"---------------Plugins-----------------"

"Ctrl P options
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order::ttb,min:1,max:30,results:30'

nmap <D-p> :CtrlP<cr>
nmap <D-r> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>

"NerdTREE option
let NERDTreeHijackNetrw = 0


"---------------Auto-Commands-----------"

"Automatically source the Vimrc file on save

augroup autosourcing 
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END




"---------------Notes and tips-----------"

"To change inside a symbol (eg:inside parenthesis) 'ci('
"To change inside a symbol with symbol included 'ca('
"To select inside a symbol (eg:inside parenthesis) 'vi('
"To instantly center the line chere the cursor is 'zz'

