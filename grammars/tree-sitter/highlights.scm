; https://github.com/staysail/tree-sitter-meson/blob/main/queries/highlights.scm
; highlights.scm
;
; Copyright 2022 Staysail Systems, Inc.
;
; Distributed under the MIT License.
; (See accompanying file LICENSE.txt or https://opensource.org/licenses/MIT)
; SPDX-License-Identifier: MIT
;
; These highlights are quite generic for the default Tree-sitter theme.
;
; Modifications by Anna
(comment) @comment.meson

; these are listed first, because they override keyword queries
(function_expression (identifier) @support.other.function.meson)

(assignment_operator) @keyword.operator.assignment.meson

[
    (equality_operator)
    ">="
    "<="
    "<"
    ">"

] @keyword.operator.comparison.meson

[
  (additive_operator)
  (multiplicative_operator)
  "+"
  "-"
] @keyword.operator.arithmetic.meson

[
    (and)
    (or)
    (not)
    (in)
] @keyword.operator.logical._TYPE_.meson

"{" @punctuation.definition.block.begin.bracket.curly.meson
"}" @punctuation.definition.block.end.bracket.curly.meson
"(" @punctuation.definition.begin.bracket.round.meson
")" @punctuation.definition.end.bracket.round.meson
"[" @punctuation.definition.array.begin.bracket.square.meson
"]" @punctuation.definition.array.end.bracket.square.meson

[
    (if)
    (elif)
    (else)
    (endif)
    (foreach)
    (endforeach)
    (break)
    (continue)
] @keyword.control._TYPE_.meson

(boolean_literal) @boolean.literal.constant.meson
(int_literal) @number.literal.constant.meson

(keyword_argument keyword: (identifier) @variable.parameter.meson)
(escape_sequence) @constant.character.escape.meson

[
"."
","
":"
] @punctuation.separator._TYPE_.meson

(string_literal) @string.quoted.double.meson
(fstring_literal) @string.quoted.single.meson

(identifier) @variable.declaration.meson
