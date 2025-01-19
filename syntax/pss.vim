" Vim syntax file for Portable Stimulus Standard (PSS)
" Language: pss
" Author: Pratik Parvati
" Created on: 19th Jan 2025
" Description: This file defines syntax highlighting for the Portable Stimulus Standard (PSS) language.
" The file provides highlighting for keywords, types, statements, constants, and comments.

if exists("b:current_syntax")
    finish  " Exit if syntax is already set
endif

au BufRead,BufNewFile *.pss set filetype=pss  " Automatically detect PSS file type

" === Define PSS Keywords ===
" These are the core language constructs in PSS, used for defining operations, conditions, and components
syn keyword pssKeyword abstract action activity array as assert atomic
syn keyword pssKeyword bind bins bit body bool break buffer chandle
syn keyword pssKeyword class compile component concat const constraint
syn keyword pssKeyword continue cover covergroup coverpoint cross declaration
syn keyword pssKeyword default disable dist do dynamic else enum eventually
syn keyword pssKeyword exec export extend false file float32 float64
syn keyword pssKeyword forall foreach function has header if iff ignore_bins
syn keyword pssKeyword illegal_bins import in init init_down init_up
syn keyword pssKeyword inout input instance int join_branch join_first
syn keyword pssKeyword join_none join_select list lock map match monitor
syn keyword pssKeyword null output override package parallel pool post_solve
syn keyword pssKeyword pre_body pre_solve private protected public pure rand
syn keyword pssKeyword randomize ref repeat replicate resource return run_end
syn keyword pssKeyword run_start schedule select sequence set share solve
syn keyword pssKeyword state static stream string struct super symbol target
syn keyword pssKeyword this true type typedef unique void while with yield

" === Define PSS Statements ===
" Statements in PSS used to express operations like looping, conditional execution, and functional blocks
syn keyword pssStatement action import class covergroup coverpoint cross do
syn keyword pssStatement else extend foreach function if in typedef while with

" === Define PSS Types ===
" Basic data types used in PSS such as input/output types and constraints
syn keyword pssType input output inout rand int bit bool lock pool const
syn keyword pssType enum buffer bins resource constraint memory static
syn keyword pssType stream string symbol void

" === Define PSS Constants ===
" True and False constants used for logical operations and assignments
syn keyword pssConstant false true

" === Comment Handling ===
" Single-line comments start with '//' and multi-line comments use '/* */'
syn region pssComment start="//" skip="\\$" end="$" keepend
syn region pssComment start="/\*" end="\*/" keepend

" === Folding Regions ===
" Blocks of code (such as functions) can be folded for easier navigation
syn region pssDescBlock start="{" end="}" fold transparent

" === Identifier and Package Matching ===
" Match identifiers and package declarations for easy navigation and highlighting
syn match pssPackageIdentifier contained '[a-zA-Z_][a-zA-Z0-9_]*' display contained
syn keyword pssStatement package nextgroup=pssPackageIdentifier skipwhite

let b:current_syntax = "pss"  " Mark this file as using the PSS syntax

" === Highlight Groups ===
" Define how the syntax elements will be colored for better readability
hi def link pssKeyword       Keyword
hi def link pssStatement     Statement
hi def link pssType          Type
hi def link pssConstant      Constant
hi def link pssComment       Comment
hi def link pssPreProc       PreProc
hi def link pssFunction      Function
hi def link pssPackageIdentifier Function

" === String Matching ===
" Match string literals in PSS code
syntax match MyString /".*"/
