"let g:prettier#autoformat = 1
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
autocmd TextChanged,InsertLeave  *.json,*.mjs,*.ts,*.css,*.scss,*.json,*.js,*.md,*.yaml,*.html PrettierAsync
