call plug#begin('~/.config/nvim/plugged')

"ruby
"Plug 'autozimu/LanguageClient-neovim'

"markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

"vim-latex
Plug 'vim-latex/vim-latex'
Plug 'lervag/vimtex'

"git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"kitty
Plug 'fladson/vim-kitty'

"vim-startify
Plug 'mhinz/vim-startify'

"vim-eunuch
Plug 'tpope/vim-eunuch'

"omnisharp
Plug 'omnisharp/omnisharp-vim'

"polyglot
"Plug 'sheerun/vim-polyglot'

"vim-which-key
Plug 'liuchengxu/vim-which-key'

"auto save
Plug '907th/vim-auto-save'

"coc nvim
Plug 'neoclide/coc.nvim'
Plug 'tjdevries/coc-zsh'
Plug 'neoclide/rename.nvim'

"theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'yuqio/vim-darkspace'
Plug 'morhetz/gruvbox'

"bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"indentLine
Plug 'Yggdroot/indentLine'

"emmet
Plug 'mattn/emmet-vim'

"syntaxs
"javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
"i3
Plug 'potatoesmaster/i3-vim-syntax'
"color of keys and other
Plug 'frazrepo/vim-rainbow'
"jsx
Plug 'maxmellon/vim-jsx-pretty', { 'for': 'javascript' }
"json
Plug 'elzr/vim-json'
"tsx
Plug 'ianks/vim-tsx', { 'for': 'tsx' }
"tsx-typescript
Plug 'peitalin/vim-jsx-typescript', { 'for': 'jsx' }
"css3
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
"typescript
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
"python
Plug 'vim-syntastic/syntastic', { 'for': 'python' }
Plug 'vim-python/python-syntax'
"html5
Plug 'othree/html5.vim', { 'for': 'html' }

"commentarys
Plug 'preservim/nerdcommenter'

"html
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'

"fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"auto pairs for keys and other
Plug 'jiangmiao/auto-pairs'

"search on windows
Plug 'justinmk/vim-sneak'

"snippets
Plug 'honza/vim-snippets'

"gocode
Plug 'fatih/vim-go'

"css
Plug 'ap/vim-css-color'

"surround
Plug 'tpope/vim-surround'

"prettier
Plug 'prettier/vim-prettier', {
      \ 'do': 'npm install',
      \ 'branch': 'release/1.x',
      \ 'for': [
      \ 'javascript',
      \ 'typescript',
      \ 'css',
      \ 'scss',
      \ 'json',
      \ 'markdown',
      \ 'vue',
      \ 'python',
      \ 'ruby',
      \ 'html', ] }

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
