" no need for compatibility with vi
set nocompatible

" My autocommands
if !exists("my_autocommands_loaded")
        let autocommands_loaded = 1
        " nothing yet
endif

" outside of insert mode, remap dvorak keyboard to qwerty
" set langmap='q,\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?

" map Help key to Escape key (I've changed Caps Lock to Help already)
"map <Help> <Esc>
"map! <Help> <Esc>

" set my status line
set laststatus=2
set statusline=%2n%<\ %#StatusLineNC#%{expand('%:p:h')}\/%#StatusLine#%{expand('%:t')}\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" colorscheme
colorscheme inkpot

" convenient commands
" change the CWD to the parent of the current file
command! CD :cd %:h

" convenient mappings
let mapleader = ","
let maplocalleader = "\\"
" not sure about these two
"map H ^
"map L $
noremap ` '
noremap ' `
nmap <Space> 
imap <S-CR> <Up><End><CR>
imap {<CR> {<CR>}<Up><End><CR>

" highlighting removal
nmap <Leader>h :nohl<CR>

" tab mappings
" not sure whether I prefer <S-Space> or <Space><Space>, so I'll try having
" them both
nmap <S-Space>n :tabnew<CR>
nmap <S-Space>q :tabclose<CR>
nmap <S-Space>g :tabmove<Space>
nmap <S-Space>h :tabprevious<CR>
nmap <S-Space>l :tabnext<CR>
nmap <Space><Space>n :tabnew<CR>
nmap <Space><Space>q :tabclose<CR>
nmap <Space><Space>g :tabmove<Space>
nmap <Space><Space>h :tabprevious<CR>
nmap <Space><Space>l :tabnext<CR>

" Plugin controls
" NERDTree mappings
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>N :NERDTree 
"nmap <Leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>

" EnhancedCommentify mappings
let g:EnhCommentifyUserBindings = "yes"
map <silent> <Leader>c :call EnhancedCommentify('', 'guess')<CR>

" Buffer Explorer mappings
nmap <silent> <Leader>be :BufExplorer<CR>
nmap <silent> <Leader>bs :HSBufExplorer<CR>
nmap <silent> <Leader>bv :VSBufExplorer<CR>

let VCSCommandMapPrefix = "<Leader>v"

" visual_studio.vim mappings
" first, prevent vs.vim from automatically creating mappings
let g:visual_studio_mapping = 0
" for now, I don't want them mapped
nmap <silent> <Leader>Vg :call DTEGetFile()<cr>
nmap <silent> <Leader>Vp :call DTEPutFile()<cr>
nmap <silent> <Leader>Vt :call DTETaskList()<cr>
nmap <silent> <Leader>Vo :call DTEOutput()<cr>
nmap <silent> <Leader>Vf :call DTEFindResults(1)<cr>
nmap <silent> <Leader>V2 :call DTEFindResults(2)<cr>
nmap <silent> <Leader>Vb :call DTEBuildSolution()<cr>
nmap <silent> <Leader>Vu :call DTEBuildStartupProject()<cr>
nmap <silent> <Leader>Vc :call DTECompileFile()<cr>
nmap <silent> <Leader>Vs :call DTEGetSolutions()<cr>
nmap <silent> <Leader>Vj :call DTEGetProjects()<cr>
nmap <silent> <Leader>Va :call DTEAbout()<cr>
nmap <silent> <Leader>Vh :call DTEOnline()<cr>

" GnuPG controls
let g:GPGExecutable = "gpg2"

" indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" syntax highlighting, etc.
syntax on
filetype on
filetype plugin on
filetype indent on

" search highlighting
set hlsearch
set incsearch

" ignore case while searching, unless a capital letter is used
set ignorecase
set smartcase

" allow hidden buffers
set hidden

" longer command/search history
set history=1000

" extended % matching
runtime macros/matchit.vim

" improved tab completion in command mode
set wildmenu

" start scrolling before the cursor reaches the edge of the window
set scrolloff=3

" make sure backspacing is possible over indentation, newlines
set backspace=indent,eol,start

" show line/ column number at the bottom
set ruler

" turn off cursor blinking in normal mode
set gcr=n:blinkon0

" haven't decided whether to enable these...
" set mouse=a

