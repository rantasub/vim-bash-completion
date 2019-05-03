vim-bash-completion
===================

vim-bash-completion is a small vim plugin that makes bash completion accessible within vim. It provides the `bash#complete` command that returns a list of all available completions for its single argument. To try it out, just type `:echo bash#complete('ls -')` to get all arguments for the `ls` command. 

Real life example
-----------------

With the help of vim's functionality to use self-defined completion functions, we can define a `:Make` command that provides handy completions for make targets.

```vim
function MakeCommandCompletion(ArgLead, CmdLine, CursorPos)
    let l:words = split(a:CmdLine)
    let l:words[0] = 'make'
    let l:command = join(l:words)
    return bash#complete(l:command)
endfunction

:command -nargs=* -complete=customlist,MakeCommandCompletion Make make <args>
```
