setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

" Remap C-] for go files
nmap <C-]> :GoDef<CR>
nmap <C-\>s :GoReferrers<CR>
nmap <C-\>c :GoCallers<CR>
nmap <C-\>d :GoCallees<CR>
