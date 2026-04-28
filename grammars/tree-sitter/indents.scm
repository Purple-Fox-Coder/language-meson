; TODO (these don't seem to be working)

[
  (function_expression)
  (array_literal)
  (dictionary_literal)
  (selection_statement)
  (iteration_statement)
] @indent.begin

(selection_statement
  (endif) @indent.end)

(iteration_statement
  (endforeach) @indent.end)

(function_expression
  "endfunction" @indent.end)

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @indent.branch

[
  (elseif_clause)
  (else_clause)
] @indent.branch

[
  (comment)
  (string)
] @indent.ignore
