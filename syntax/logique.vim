" Vim syntax file
" " Language: Logique
" " Maintainer: Placentino Simon @ github.com/splacentino
" " Latest Revision: 18.03.15

if exists("b:current_syntax")
	finish
endif

scriptencoding utf-8

let b:current_syntax = "logique"

"syntax match className '\[a-Z]\+(<.+>)'
syntax keyword logiqueKeyword classe nextgroup=className
syntax keyword logiqueKeyword si pour tant que interface module methode méthode constructeur par de a à sinon
syntax keyword logiqueKeyword alors faire
"syntax match endOf ''
syntax keyword logiqueKeyword fin nextgroup=endOf
syntax keyword logiqueKeyword privé prive public
syntax keyword logiqueKeyword retourner
highlight link logiqueKeyword Keyword

syntax keyword logiqueFunction afficher erreur
highlight link logiqueFunction Function

syntax match logiqueComment "\v#.*$"
highlight link logiqueComment Comment

syntax match logiqueOperator "\v\*"
syntax match logiqueOperator "\v/"
syntax match logiqueOperator "\v\+"
syntax match logiqueOperator "\v-"
syntax match logiqueOperator "\v\?"
syntax match logiqueOperator "\v\*\="
syntax match logiqueOperator "\v/\="
syntax match logiqueOperator "\v\+\="
syntax match logiqueOperator "\v-\="
syntax match logiqueOperator "\v\."
syntax match logiqueOperator "\v\:"
syntax match logiqueOperator "\v\<-"
syntax match logiqueOperator "\v\-\>"
highlight link logiqueOperator Operator

syntax region logiqueString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link logiqueString String

syntax region conditionBlock start=/alors/ end=/fin\ si/
syntax region doBlock start=/faire/ end=/fin\ pour/
syntax region whileBlock start=/que/ end=/fin/

" Integer with - + or nothing in front
syn match celNumber '\d\+'
syn match celNumber '[-+]\d\+'

" Floating point number with decimal no E or e (+,-)
syn match celNumber '\d\+\.\d*'
syn match celNumber '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match celNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match celNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

"setlocal foldmethod=indent
"setlocal foldmethod=expr
