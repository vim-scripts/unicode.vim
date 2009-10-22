" unicodePlugin : A completion plugin for Unicode glyphs
" Author: C.Brabandt <cb@256bit.org>
" Copyright: (c) 2009 by Christian Brabandt
"            The VIM LICENSE applies to unicode.vim, and unicode.txt
"            (see |copyright|) except use "unicode" instead of "Vim".
"            No warranty, express or implied.
"  *** ***   Use At-Your-Own-Risk!   *** ***
"
" GetLatestVimScripts: 2822 2 :AutoInstall: unicode.vim

" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("g:loaded_unicodePlugin")
 finish
endif
let g:loaded_unicodePlugin = 1
let s:keepcpo              = &cpo
set cpo&vim

let s:enableUnicodeCompletion = 0
" ------------------------------------------------------------------------------
" Public Interface: {{{1
com! EnableUnicodeCompletion call unicode#Init(1)
com! DisableUnicodeCompletion call unicode#Init(0)

if s:enableUnicodeCompletion
    call unicode#Init(s:enableUnicodeCompletion)
    "let s:enableUnicodeCompletion = !s:enableUnicodeCompletion
endif



" =====================================================================
" Restoration And Modelines: {{{1
" vim: fdm=marker
let &cpo= s:keepcpo
unlet s:keepcpo
