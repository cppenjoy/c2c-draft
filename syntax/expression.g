
primary-expression ->
    Nested-Identifier
    | Literal
    | BinaryExpression
    | UnaryExpression

ConditionalExpression ->
    primary-expression (conditional-operator primary-expression)*

conditional-operator ->
    '!='
    '=='
    '&&'
    '||'

BinaryExpression ->
    UnaryExpression binary-operator primary-expression

binary-operator ->
    '-'
    '+'
    '/'
    '*'
    '%'

    '~'
    '&'
    '|'
    '!'

UnaryExpression ->
    | unary-operator Nested-Identifier
    | CastExpression
    | 'sizeof' sizeof-body
    | 'decltype' decltype-body

unary-operator -> 
    '++'
    | '--'
    | '*'
    | '&'
    | '!'

sizeof-body -> 
    'sizeof' type-name
    | '(' primary-expression ')'

decltype-body -> 
    'decltype' '(' primary-expression ')'
 
CastExpression -> 
    | reinterpret-cast
    | static-cast
    | dynamic-cast

reinterpret-cast ->
    'reinterpret_cast' cast-type

static-cast ->
    'static_cast' cast-type

dynamic-cast ->
    'dynamic_cast' cast-type

cast-type -> '<' type_name '>' to-cast
to-cast -> '(' primary-expression ')'

Nested-Identifier ->
    Identifier ('::' Identifier)*

Identifier -> [azAZ_] (DIGIT+)?

Literal ->
    IntegerLiteral
    | StringLiteral
    | FloatLiteral

IntegerLiteral -> 
    INTEGER_SUFFIX? DIGIT+
INTEGER_SUFFIX ->
    [uU]
    |    [lL]
    |    [sS]
    |    [wW]
DIGIT -> [0-9]

StringLiteral ->
    STRING_SUFFIX? '+' char-sequence '"'

STRING_SUFFIX ->
    [wW]

char-sequence ->
    c-char*

c-char -> [any]

FloatLiteral -> 
    DIGIT+ '.' DIGIT+ 
