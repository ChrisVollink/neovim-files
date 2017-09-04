if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/bashfu/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/bashfu/.config/nvim/bundle'
let g:dein#_runtime_path = '/home/bashfu/.config/nvim/bundle/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/bashfu/.config/nvim/bundle/.cache/init.vim'
let &runtimepath = '/home/bashfu/.config/nvim,/etc/xdg/xdg-gnome/nvim,/etc/xdg/nvim,/home/bashfu/.local/share/nvim/site,/usr/share/gnome/nvim/site,/home/bashfu/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/home/bashfu/.config/nvim/bundle/repos/github.com/zchee/deoplete-go,/home/bashfu/.config/nvim/bundle/repos/github.com/Shougo/dein.vim,/home/bashfu/.config/nvim/bundle/repos/github.com/carlitux/deoplete-ternjs,/home/bashfu/.config/nvim/bundle/.cache/init.vim/.dein,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/home/bashfu/.config/nvim/bundle/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,/home/bashfu/.local/share/flatpak/exports/share/nvim/site/after,/usr/share/gnome/nvim/site/after,/home/bashfu/.local/share/nvim/site/after,/etc/xdg/nvim/after,/etc/xdg/xdg-gnome/nvim/after,/home/bashfu/.config/nvim/after,/usr/share/nvim-qt/runtime'
filetype off
