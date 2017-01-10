set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Valloric/YouCompleteMe'

Plugin 'mattn/emmet-vim'

Plugin 'easymotion/vim-easymotion'

Plugin 'twerth/ir_black'

Plugin 'tomasr/molokai'

Plugin 'w0ng/vim-hybrid'

Plugin 'wincent/command-t'

Plugin 'NLKNguyen/papercolor-theme'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'DrSpatula/vim-buddy'

Plugin 'freeo/vim-kalisi'

Plugin 'hdima/python-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set noshowmode

" set color
syntax enable
set t_Co=256
set background=light
colorscheme kalisi

" lightline fix
set laststatus=2
set rnu
set cursorline

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

nmap ev :tabedit $MYVIMRC<CR>


" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  endif

" <Leader>w{char} to move to {char}
map  <Leader>w <Plug>(easymotion-bd-f)
nmap <Leader>w <Plug>(easymotion-overwin-f)

let g:ycm_autoclose_preview_window_after_completion = 1
let g:user_emmet_leader_key='<C-Z>'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_openframeworks.py"

set expandtab ts=4 sw=4 ai
let python_highlight_all = 1
