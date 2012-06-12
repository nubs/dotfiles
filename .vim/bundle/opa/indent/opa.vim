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

function! GetOpaIndent()
endfunction
