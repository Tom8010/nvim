

augroup VimCSS3Syntax
  au FileType scss svg setl iskeyword+=@-@
  au FileType css setlocal iskeyword+=-
  :highlight VendorPrefix guifg=#00ffff gui=bold
  :match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/
augroup END

