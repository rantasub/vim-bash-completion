let s:pluginPath = expand('<sfile>:p:h') . '/..'

function! bash#complete(partialCommand)
    return systemlist(s:pluginPath . '/completer.sh ' . a:partialCommand)
endfunction
