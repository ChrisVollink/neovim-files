" recognize .snippet files
if has("autocmd")
    autocmd BufNewFile,BufRead *.snippets setf snippets
endif
au BufNewFile,BufRead .tern-project setf json
au BufNewFile,BufRead .tern-config setf json
