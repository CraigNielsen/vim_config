call plug#begin('~/.config/nvim/plugged')

" colorschemes
Plug 'nanotech/jellybeans.vim'
Plug 'goatslacker/mango.vim'
Plug 'romainl/Apprentice'
"Plug 'flipxfx/gruvbox-terminal'
Plug 'morhetz/gruvbox'
Plug 'croaker/mustang-vim'
Plug 'w0ng/vim-hybrid'
Plug 'tpope/vim-rhubarb'

" general
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'
"Plug 'benekastah/neomake'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'
Plug 'yegappan/mru'
" Plug 'Shougo/deoplete.nvim'
"
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'isRuslan/vim-es6'
Plug 'haya14busa/incsearch.vim'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-utils/vim-husk'

" editing
"#
Plug 'vim-latex/vim-latex'
Plug 'gillescastel/latex-snippets'

Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'w0rp/ale'
Plug 'alvan/vim-closetag'
Plug 'Valloric/ListToggle'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'wikitopian/hardmode'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'justinmk/vim-sneak'
Plug 'vim-scripts/camelcasemotion'
Plug 'scrooloose/nerdcommenter'
Plug 'ivanov/vim-ipython'

" eye candy
Plug 'myusuf3/numbers.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer', { 'on': 'ColorToggle' }
Plug 'wavded/vim-stylus'

" javascript
"Plug 'maksimr/vim-jsbeautify'
"Plug 'ruanyl/vim-fixmyjs'
"Plug 'guileen/vim-node-dict'
"Plug 'moll/vim-node'
"Plug 'othree/yajs.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
"Plug '1995eaton/vim-better-javascript-completion'
"Plug 'gavocanov/vim-js-indent'
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'digitaltoad/vim-jade'
"Plug 'elzr/vim-json'
"Plug 'mxw/vim-jsx'
"Plug 'posva/vim-vue'

" elixir
Plug 'elixir-lang/vim-elixir'

" python
"Plug 'nvie/vim-flake8'
"Plug 'andviro/flake8-vim'
Plug 'tell-k/vim-autopep8'
"Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
" other
Plug 'mattn/emmet-vim'
Plug 'ciaranm/detectindent'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/csscomplete.vim'
Plug 'groenewege/vim-less'
Plug 'terryma/vim-multiple-cursors'
Plug 'sukima/xmledit'
" Ruby
Plug 'vim-ruby/vim-ruby'

" text objects
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-user'
Plug 'glts/vim-textobj-comment'
Plug 'kana/vim-textobj-fold'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-function'
Plug 'thinca/vim-textobj-function-javascript'

call plug#end()
