filetype plugin indent on

let g:python3_host_prog = $HOME .'/.pyenv/versions/neovim3/bin/python'
let g:jedi#force_py_version = 3
"need to install an nvim with python 2 and python 3 for the aboce reason
let g:python_host_prog = $HOME .'/.pyenv/versions/neovim2/bin/python'
" neomake config
autocmd! BufWritePost,BufEnter * Neomake
" autocmd BufLeave * QFix let g:neomake_place_signs = 1 let g:neomake_open_list = 0
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
" TODO: check if in project reps with find, then enable eslint
"
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
" TODO: check if in project reps with find, then enable eslint
 if ($PWD == '/home/craig/git_repos/psychicjenha')
   echo $PWD .'/frontend/node_modules/.bin/eslint'
   let g:neomake_javascript_eslint_exe = $PWD .'/frontend/node_modules/.bin/eslint'
   let g:fixmyjs_executable = $PWD .'/frontend/node_modules/.bin/eslint'
endif
 if ($PWD == '/home/craig/git_repos/reps')
   echo "working in pwd: /home/craig/git_repos/reps"
   echo $PWD .'/website-service/node_modules/.bin/eslint'
   let g:neomake_javascript_eslint_exe = $PWD .'/website-service/node_modules/.bin/eslint'
   let g:fixmyjs_executable = $PWD .'/website-service/node_modules/.bin/eslint'
endif


 if ($PWD == '/home/craig/git_repos/sandbox/crawler')
   echo "working in pwd: /home/craig/git_repos/sandbox/crawler"
   echo $PWD .'setting python to virtual python'
   let g:ycm_python_binary_path = 'home/craig/.pyenv/versions/3.4.3/envs/crawling/bin/python3.4'
endif
" auto close tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx,*.js"
" autopep8
let g:autopep8_ignore="E501"
" pymodelint:
let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore = "E501,W"
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 1
let g:pymode_run_bind = '<SHIFT><C-r>'
let g:pymode_rope_lookup_project = 0
"emmet irritation
let g:user_emmet_leader_key='<C-Z>'
" fix my javascript
let g:fixmyjs_engine = 'fixmyjs'
let g:fixmyjs_rc_path = '~/.eslintrc'
noremap <Leader><Leader>f :Fixmyjs<CR>
"let g:fixmyjs_use_local = 1
"vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx"
"rope
let g:pymode_rope = 1
let g:pymode_rope_autoimport=0

"jedi vim

let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_enabled = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

let g:jedi#goto_assignments_command = "<leader>pa"
let g:jedi#goto_definitions_command = "<leader>pd"
let g:jedi#documentation_command = "<leader>pk"
let g:jedi#usages_command = "<leader>pu"
let g:jedi#rename_command = "<leader>mr"
" ycm strings
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

"set t_Co=256
set termguicolors
set background=dark
syntax enable
colorscheme gruvbox
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_hls_cursor='orange'
let g:gruvbox_invert_selection='orange'

" make background transparent
" hi Normal ctermbg=NONE
" hi EndOfBuffer ctermbg=NONE
" hi LineNr ctermbg=234
" ________________________________________________________________
" CtrlP
let g:ctrlp_prompt_mappings={'PrtClearCache()':['<Leader><F5>']}
let g:ctrlp_prompt_mappings={'PrtdeleteEnt()':['<Leader><F7>']}
let g:ctrlp_match_window='bottom,order:btt,min:2,max:25'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 20000
" let g:ctrlp_root_markers = ['.git']
set wildmenu " enhanced autocomplete
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*,*.jpg,*.png,*.svg,*.ttf,*.woff,*.woff3,*.eot
" ",*public/css/*,*public/js*

" delimitMate options
let delimitMate_expand_cr=1

" enable matchit (for matching tags with %)
runtime macros/matchit.vim

" vim-sneak settings
hi SneakPluginTarget ctermfg=black ctermbg=181818

" javascript libraries syntax
let g:used_javascript_libs = 'jquery,underscore,react,flux,chai'

" completion
" augroup omnifuncs
  " autocmd!
  " autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  " autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  " autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  " autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  " autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
" augroup end

" tern
" if exists('g:plugs["tern_for_vim"]')
  " let g:deoplete#omni#functions = {}
  " let g:deoplete#omni#functions.javascript = [
    " "\ 'tern#Complete',
    " "\ 'jspc#omni'
  " "\]
" endif
"
" " deoplete
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources = {}
" let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
" let g:tern#command = ['tern']
" let g:tern#arguments = ['--persistent']
" let g:tern_request_timeout = 1
" let g:SuperTabClosePreviewOnPopupClose = 1

" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1


"KEYS

" emmet-vim settings
" let g:user_emmet_settings = { "html": { "quote_char": "'"} }
" map Leader
let mapleader = ","
" keep backward f search, remapping it to ,;
nnoremap <Leader>; ,

" in-line scrolling
nmap <Leader>j gj
nmap <Leader>k gk
" vim fugitive
nmap <Leader>gs :Gstatus<CR>
" craigs customs
" l2 == leader2
" l2 Test This
map <leader>mtt :!/home/craig/vim_projects/testthis.sh %:p<CR>
map <leader>mta :!/home/craig/vim_projects/testall.sh %:p<CR>

" hard mode config
nnoremap <Leader>h <Esc>:call ToggleHardMode()<CR>
" dunder a word
nnoremap <Leader>wd ciw__<Esc>pa__  <Esc>
" first spell reccomended spelling next spelling fix
nnoremap <Leader>sf z=1 <CR>
" go to errors eslint
nnoremap <Leader>mk :lne<CR>
nnoremap <Leader>mj :lpr<CR>

" swap function parameters
"map <Leader>ms di,<CR>
map <Leader>ms di,pldwdwF,i p

nmap <F8> :TagbarToggle<CR>

"copy current working dir to clipbaord path
nmap <Leader>cp :let @+ = expand("%")<CR>
" relative path
":let @+ = expand("%")
" full path
":let @+ = expand("%:p")
" just filename
":let @+ = expand("%:t")

" buffer keys
nnoremap <Leader>bb :b#<CR>
nnoremap <Leader>b <CR>
"nnoremap <Leader>bn :bn<CR>
"nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>bf :bf<CR>
nnoremap <Leader>bl :bl<CR>
nnoremap <Leader>bw :w<CR>:bd<CR>
nnoremap <Leader>bd :bd!<CR>
" new buffer/tab
" nnoremap <Leader>e :enew<CR>

" Looper buffers
let g:buffergator_mru_cycle_loop = 0
let g:buffergator_sort_regime = "mru"
"indent
"nnoremap <C-i> gg=G<C-o><C-o>
"surrounding
"nnoremap <Leader>sd vatc<div></div><Esc>cit<CR><CR><Esc>kP<C-i>
nnoremap <Leader>sd vat:call UltiSnipsExpandTrigger()
"insert next line into brackets
nnoremap <C-I> i<CR><CR><Esc>jddkkPk<Esc>JJJ

" Go to the previous buffer open
nnoremap <leader>j :bp<cr>
nnoremap <leader>bp :BuffergatorMruCyclePrev<cr>
" Go to the next buffer open
nnoremap <leader>k :bn<cr>
nnoremap <leader>bn :BuffergatorMruCycleNext<cr>
" View the entire list of buffers open
nnoremap <leader>bl :BuffergatorOpen<cr>
" To open a new empty buffer
nnoremap <leader>T :enew<cr>
nnoremap <leader>mo :bro o<cr>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nnoremap <leader>bq :bp <BAR> bd #<cr>

"toggle location lists etc
let g:lt_location_list_toggle_map = '<leader>c'
let g:lt_quickfix_list_toggle_map = '<leader>v'

nnoremap <silent><F3> :Ack!<CR>
nmap <silent><RIGHT> :cnext<CR>
nmap <silent><LEFT> :cprev<CR>

"import
nnoremap <leader>mi :PymodeRopeAutoImport<CR>
"rename
"nnoremap <Leader>r :%s/\<<C-r><C-w>\>/<C-r><C-w>/g<Left><Left>
vnoremap <leader>mr :s//g<Left><Left>
" window keys
nnoremap <leader>w< <c-w><
nnoremap <leader>w> <c-w>>
nnoremap <leader>w- <c-w>-
nnoremap <leader>w+ <c-w>+
nnoremap <leader>ws :split<cr>
nnoremap <leader>wv :vsplit<cr>
nnoremap <leader>q :close<cr>

nnoremap <leader>w <c-w>

" %% to expand active buffer location on cmdline
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" CtrlP keys
nnoremap <Leader>pp :CtrlP<CR>
nnoremap <Leader>pf :CtrlP<CR>
nnoremap <Leader>pm :CtrlPMRUFiles<CR>
nnoremap <Leader>pr :CtrlPMRUFiles<CR>
nnoremap <Leader>pb :CtrlPBuffer<CR>
nnoremap <Leader>pb :CtrlPBuffer<CR>

" Function keys
nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <Leader><F3> :set hlsearch!<CR>
nnoremap <F6> :source $HOME/.config/nvim/init.vim<CR>
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <Leader><F5> :NERDTreeFind<CR>
nnoremap <F7> :UndotreeToggle<CR>
"nnoremap <F8> :Geeknote<CR>
" indent whole file according to syntax rules
noremap <F9> :PymodeLintAuto
noremap <Leader><F9> gg=G<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Don't use Ex mode use Q for formatting
" map Q gq

" relative line numbers
nnoremap <Leader>3 :NumbersToggle<CR>
nnoremap <Leader>mgk :GitGutterNextHunk<CR>
nnoremap <Leader>mgj :GitGutterPrevHunk<CR>

" remap number increment to C-s (C-a is already in use by tmux)
" nnoremap <C-s> <C-a>

" Word count selection
" vnoremap <Leader>w :w !wc -w<CR>


" vim paste mode toggle (for fixing indentation issues when pasting text)
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" override read-only permissions
" cmap w!! %!sudo tee > /dev/null %

" allow ,, for vimsneak
nmap <Leader>, <Plug>SneakPrevious

" camelCase motion settings
"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" easy motion
" <Leader>f{char} to move to {char}
"map  <Leader>s <Plug>(easymotion-bd-f)
"nmap <Leader>s <Plug>(easymotion-overwin-f)
"
"" s{char}{char} to move to {char}{char}
map  <Leader>f <Plug>(easymotion-bd-f2)
nmap <Leader>f <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
"
"comment
map <c-_> <plug>NERDCommenterToggle
let NERDTreeIgnore=['\.pyc$']
"autopep8

" " Move to word
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)

" you complete me
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<tab>'


let g:UltiSnipsExpandTrigger = "<C-j>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"
let g:UltiSnipsSnippetsDir = "~/.config/nvim/UltiSnips"
"let g:UltiSnipsSnippetDirectories=['~/.config/nvim/UltiSnips']
nnoremap <Leader>g :YcmCompleter GoToDefinition<CR>
nnoremap <Leader>mg :YcmCompleter GoToDeclaration<CR>
nnoremap <Leader>r :YcmCompleter GoToReferences<CR>
nmap <Leader>tg yiw:CtrlP<CR><C-\>w
nmap <Leader>tt /<C-R>"<CR>
" neomake
"nmap <Leader><Space>o :lopen<CR>
"nmap <Leader><Space>c :lclose<CR>
"nmap <Leader><Space>, :ll<CR>
"nmap <Leader><Space>n :lnext<CR>
"nmap <Leader><Space>p :lprev<CR>

" folding
nmap <Leader><F2> zf%

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" autocomplete
" let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" let g:UltiSnipsExpandTrigger="<C-j>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<C-R>=UltiSnips#ExpandSnippet()"

let g:gitgutter_max_signs=1200
" colorizer
nmap <Leader>tc :ColorToggle<CR>
map <C-h> <C-W>h<C-W>_

