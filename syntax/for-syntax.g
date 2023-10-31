stmt_for -> 'for' '(' (for_decl)? ';' argument_expression_list? ';' argument_expression_list? ')' block?
for_decl -> type_qualifier? '*'? type identifier ('=' primary_expression)?