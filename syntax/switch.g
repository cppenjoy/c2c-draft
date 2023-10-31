stmt_switch -> 'switch' '(' primary_expression ')' switch-block ';'
switch-block -> '{' (switch-case | switch-default)* '}'
switch-case -> 'case' primary_expression ':' (block | 'break' ';')?
switch-case -> 'default' ':' (block | 'break' ';')