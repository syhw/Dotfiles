" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile *.sol		setfiletype solar
augroup END
augroup markdown
    au! BufRead,BufNewFile *.mkd   setfiletype mkd
augroup END
augroup mako
    au! BufRead,BufNewFile *.mako   setfiletype mako
augroup END

