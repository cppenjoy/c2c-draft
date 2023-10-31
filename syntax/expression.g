primary_expression -> (identifier | number_literal | string_literal | '(' expression ')')

expression -> assign_expression (',' assign_expression)*

cast_expression -> '(' type_name ')' cast_expression

multiplicative_expression -> cast_expression (('*'|'/'|'%') cast_expression)*
additive_expression -> multiplicative_expression (('+'|'-') multiplicative_expression)*
shift_expression -> additive_expression (('<<'|'>>') additive_expression)*

relational_expression -> shift_expression (('<'|'>'|'<='|'>=') shift_expression)*

equality_expression -> relational_expression (('=='| '!=') relational_expression)*
and_expression -> equality_expression ( '&' equality_expression)*

exclusive_or_expression -> and_expression ('^' and_expression)*
inclusive_or_expression -> exclusive_or_expression ('|' exclusive_or_expression)*

logical_and_expression -> inclusive_or_expression ('&&' inclusive_or_expression)*
logical_or_expression -> logical_and_expression ( '||' logical_and_expression)*

conditional_expression -> logical_or_expression ('?' expression ':' conditional_expression)?

assignment_expression -> conditional_expression | (unary_expression assignment_operator assignment_expression)
assignment_operator -> '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '&=' | '^=' | '|='

postfix_expression -> primary_expression ('[' expression ']' | '(' argument_expression_list? ') | ('.' | '->') identifier | '++' | '--')
argument_expression_list -> assignment_expression (',' assignment_expression)*

unary_expression -> ('++' |  '--' |  'sizeof')? (postfix_expression | unary_operator cast_expression | 'sizeof' '(' type_name ')')
unary_operator -> '&' | '*' | '+' | '-' | '~' | '!'