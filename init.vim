call plug#begin('~/.config/nvim/plugged')

Plug 'ellisonleao/gruvbox.nvim' " 新增 
Plug 'kyazdani42/nvim-web-devicons' " 新增  
Plug 'vim-airline/vim-airline'                                                           
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
call plug#end()

set termguicolors " 新增 
set background=dark " 新增  
colorscheme gruvbox " 新增 
set number
set viminfo='1000,<500
set clipboard=unnamed

let g:airline#extensions#tabline#enabled = 1     
let g:airline#extensions#tabline#formatter = 'default'
nmap e <Plug>AirlineSelectPrevTab     
