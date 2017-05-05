filetype plugin indent on

let g:python3_host_prog = $HOME .'/.pyenv/versions/neovim3/bin/python'
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
let g:pymode_lint_on_write = 1
let g:pymode_lint_on_fly = 1
let g:pymode_line_ignore = "E501"
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

" emmet-vim settings
" let g:user_emmet_settings = { "html": { "quote_char": "'"} }
