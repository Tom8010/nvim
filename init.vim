"Plugs
so ~/.config/nvim/vim-plug/plugs.vim

"which-key
so ~/.config/nvim/keys/which-key.vim
so ~/.config/nvim/keys/general.vim

"general
so ~/.config/nvim/general/setting.vim

"plug-config
  "coc
  so ~/.config/nvim/plug-config/coc.vim
  "css
  so ~/.config/nvim/plug-config/css.vim
  "fzf
  so ~/.config/nvim/plug-config/fzf.vim
  "go
  so ~/.config/nvim/plug-config/go.vim
  "html
  so ~/.config/nvim/plug-config/html.vim
  "indentline
  so ~/.config/nvim/plug-config/indentline.vim
  "prettier
  so ~/.config/nvim/plug-config/prettier.vim
  "python
  so ~/.config/nvim/plug-config/python.vim
  "sneak
  so ~/.config/nvim/plug-config/sneak.vim
  "vim-closetag
  so ~/.config/nvim/plug-config/vim-closetag.vim
  "vim-pug-complete
  so ~/.config/nvim/plug-config/vim-pug-complete.vim
  "vim-rainbow
  so ~/.config/nvim/plug-config/vim-rainbow.vim

"themes
so ~/.config/nvim/themes/airline.vim

syntax enable
colorscheme dracula

let g:fzf_layout = { 'window': '10new' }
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
let g:auto_save_write_all_buffers = 1  " write all open buffers as if you would use :wa

so ~/.vimrc

autocmd BufNewFile  *.html	0r ~/.config/nvim/templates/html/index.html

imap <C-c> <ESC>
