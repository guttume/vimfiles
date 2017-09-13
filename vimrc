"-------------------------General-------------------------"
set nocompatible
so $HOME/vimfiles/plugins.vim		"Import Plugins file
set backspace=indent,eol,start      "Make backspace to behave like every other editor
set hidden			                "handle multiple buffers in a better way
set history=500
set autoread
set noshowmode
set path+=**
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'




"-------------------------VISUALS-------------------------"
syntax enable				"Turn on the syntax highlighting
set linespace=10			"Increase the line spacing
set relativenumber			"enable relative line numbering
set number			"show actual line number for active line
set laststatus=2




"-------------------------Tab and Indent-------------------------"
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent






"-------------------------Searching-------------------------"
set hlsearch				"enable search highlighting
set incsearch				"enable incremental searching





"-------------------------MAPPINGS-------------------------"
nnoremap <Leader>ev :edit $MYVIMRC<cr>
nnoremap <Leader>egv :edit $MYGVIMRC<cr>
nnoremap <Leader><space> :nohlsearch<cr>
noremap <C-n> :NERDTree<cr>
inoremap jj <Esc>





"------------------------Auto-Commands---------------------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost vimrc source %
	autocmd BufWritePost gvimrc source %
augroup END





"------------------------Plugins-Commands---------------------"
let g:ctrlp_custom_ignore='node_modules\|git'

