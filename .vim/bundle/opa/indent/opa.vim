" Vim indent file
" Language:   OPA
" Maintainer: Spencer Rinehart <anubis@overthemonkey.com>

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal nosmartindent

setlocal indentexpr=GetOpaIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e

if exists("*GetOpaIndent")
  finish
endif

function! s:count_braces(lnum, count_open)
  let n_open = 0
  let n_close = 0
  let line = getline(a:lnum)
  let pattern = '[{}]'
  let i = match(line, pattern)
  while i != -1
    if synIDattr(synID(a:lnum, i + 1, 0), 'name') !~ 'opa%(Comment\|OneLineComment\|String)'
      if line[i] == '{'
        let n_open += 1
      elseif line[i] == '}'
        if n_open > 0
          let n_open -= 1
        else
          let n_close += 1
        endif
      endif
    endif

    let i = match(line, pattern, i + 1)
  endwhile

  return a:count_open ? n_open : n_close
endfunction

function! GetOpaIndent()
  let line = getline(v:lnum)
  let pnum = prevnonblank(v:lnum - 1)

  return indent(pnum) + s:count_braces(pnum, 1) * &sw - s:count_braces(v:lnum, 0) * &sw
endfunction
