Vim�UnDo� �?��zh ����7��Q��t��&䒶���Y�{b      �    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)   	   i                       `ox�    _�                       C    ����                                                                                                                                                                                                                                                                                                                                                             `ox�     �               [    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob --ignore-vcs "!.git/*"'5��       C                                       5�_�                     	   i    ����                                                                                                                                                                                                                                                                                                                                                             `ox�    �      
         �    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)�   	   
       5��       j                  �                     5�_�                       C    ����                                                                                                                                                                                                                                                                                                                                                             `ox�     �               N    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'5��       C                                       5�_�                       C    ����                                                                                                                                                                                                                                                                                                                                                             `ox�     �               M    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob"!.git/*"'5��       C                                       5�_�                        D    ����                                                                                                                                                                                                                                                                                                                                                             `ox�     �               N    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'5��       D                                       5��