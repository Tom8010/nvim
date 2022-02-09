let mapleader=" "

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e ~/.config/nvim/init.vim'   , 'init.vim' ]
let g:which_key_map.q = [':q'       , 'quit']
let g:which_key_map.e = [':CocCommand explorer' , 'explorer']
let g:which_key_map.r = [':source $MYVIMRC' , 'reload config' ]
let g:which_key_map.s = [':w' , 'save' ]

let g:which_key_map.l = {
      \ 'name'  : 'lists',
      \ 'd'     : [':CocList diagnostics' , 'diagnostics'],
      \ 'e'     : [':CocList extensions' , 'extensions'],
      \ 'c'     : [':CocList commands' , 'commands'],
      \ 'o'     : [':CocList outline' , 'outline'],
      \ 's'     : [':CocList symbols' , 'symbols'],
      \ 'z'     : [':CocList sources' , 'sources'],
      \ 'S'     : [':CocList snippets' , 'snippets'],
      \ 'b'     : [':CocList buffers' , 'buffers'],
      \ 'f'     : [':CocList files' , 'files'],
      \ 'r'     : [':CocList mru' , 'files recent'],
      \ 'C'     : [':CocList colors' , 'colors'],
      \ }

let g:which_key_map.b = {
      \ 'name'  : 'buffer',
      \ 'd'     : [':bd' , 'delete']
      \ }

let g:which_key_map.C = {
      \ 'name' : 'Coc',
      \ 'c'       : [ ':CocConfig'              , 'CocConfig' ],
      \ 'l'       : [ ':CocList'              , 'CocList' ],
      \ }

let g:which_key_map.f = {
      \ 'name' : 'FZF',
      \ '.' : [':FZF'      , 'fzf'],
      \ ':' : [':FZF ~/'      , 'fzf'],
      \ '/' : [':History/'    , 'history'],
      \ ';' : [':Commands'    , 'commands'],
      \ 'a' : [':Ag'          , 'text Ag'],
      \ 'b' : [':BLines'      , 'current buffer'],
      \ 'B' : [':Buffers'     , 'open buffers'],
      \ 'c' : [':Commits'     , 'commits'],
      \ 'C' : [':BCommits'    , 'buffer commits'],
      \ 'f' : [':Files'       , 'files'],
      \ 'g' : [':GFiles'      , 'git files'],
      \ 'G' : [':GFiles?'     , 'modified git files'],
      \ 'h' : [':History'     , 'file history'],
      \ 'H' : [':History:'    , 'command history'],
      \ 'l' : [':Lines'       , 'lines'],
      \ 'm' : [':Marks'       , 'marks'] ,
      \ 'M' : [':Maps'        , 'normal maps'] ,
      \ 'p' : [':Helptags'    , 'help tags'] ,
      \ 'P' : [':Tags'        , 'project tags'],
      \ 'r' : [':Rg'          , 'text Rg'],
      \ 's' : [':Snippets'    , 'snippets'],
      \ 'S' : [':Colors'      , 'color schemes'],
      \ 'T' : [':BTags'       , 'buffer tags'],
      \ 'w' : [':Windows'     , 'search windows'],
      \ 'y' : [':Filetypes'   , 'file types'],
      \ }

let g:which_key_map.m = {
      \ 'name' : 'MarkdownPreview',
      \ '.' : [':MarkdownPreview'         , 'run' ],
      \ ',' : [':MarkdownPreviewStop'     , 'stop' ]
      \ }

let g:which_key_map.O = {
      \ 'name' : 'OmniSharp',
      \ 'o' : [':OmniSharpCodeFormat'     , 'CodeFormat'],
      \ 'd' : [':OmniSharpDocumentation'  , 'Documentation'],
      \ }

let g:which_key_map.t = {
      \ 'name' : 'translator',
      \ }
" popup
nmap <Leader>tp <Plug>(coc-translator-p)
vmap <Leader>tp <Plug>(coc-translator-pv)
" echo
nmap <Leader>te <Plug>(coc-translator-e)
vmap <Leader>te <Plug>(coc-translator-ev)
" replace
nmap <Leader>tr <Plug>(coc-translator-r)
vmap <Leader>tr <Plug>(coc-translator-rv)

let g:which_key_map.u = {
      \ 'name'  : 'sys',
      \ 'i'     : [':e ~/.config/i3/config' , 'i3'],
      \ 'v'     : [':e ~/.vimrc' , 'vimrc']
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
      "\ 'm' : {
            "\ 'name' : 'move',
            "\ 'h' : [':TmuxNavigateLeft' , 'left'],
            "\ 'l' : [':TmuxNavigateRight' , 'right'],
            "\ 'k' : [':TmuxNavigateTop' , 'top'],
            "\ 'j' : [':TmuxNavigateDowm' , 'Dowm'],
            "\},
