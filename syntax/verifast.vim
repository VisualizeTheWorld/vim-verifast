" Vim syntax file
" Language: Verifast
" Maintainer: vtw
" Latest Revision: 9 January 2019

" Finish if this syntax is already defined
if exists("b:current_syntax")
  finish
endif

" Load in C syntax highlighting (as Verifast is just marked-up C)
runtime syntax/c.vim

syn keyword vfKeyword contained requires ensures leak assert predicate open close fixpoint invariant lemma predicate_family predicate_family_instance predicate_ctor 
syn keyword vfType contained nat real list Z
syn match vfOperator contained "&\*&"

" TODO:
" Make annotation blocks be all a color
" Highlight //@ etc
" Add more Verifast annotation block-only types (like nat, but not already added)
" Add list.gh stuff (cons, nil)
" Allow multi-line comments inside annotation blocks (currently plays weirdly with them)
" Allow single-line comments on single-line annotations (also weird)
" Highlight numbers in annotation blocks

" Add Verifast annotation blocks
syn region vfAnnote start='//@' skip='\\$' end='$' contains=vfKeyword,vfOperator,cString,cConditional,cCharacter,cOctal,cOctalZero,cFloat,cError,cOperator,cStructure,cInclude,cPreProc,cDefine,cStatement,cType,cConstant,cString
syn region vfAnnote start='/\*@' end='@\*/' contains=vfKeyword,vfOperator,cString,cConditional,cCharacter,cOctal,cOctalZero,cFloat,cError,cOperator,cStructure,cInclude,cPreProc,cDefine,cStatement,cType,cConstant,cString,cCommentL

syn sync ccomment vfAnnote minlines=50

" Name the syntax
let b:current_syntax = "verifast"

hi def link vfAnnote Debug
hi def link vfKeyword Statement
hi def link vfOperator Operator
hi def link vfType Type
