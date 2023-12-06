type_qualifier -> ('const', 'volatile')
storage_modifier -> ('static' | 'extern')
type_name -> type_qualifier? '*'? type
type -> (Nested-Identifier | 'void' | 'char' | 'bool' | 'short' | 'int' | 'long' | 'long long' | 'float' | 'double' | 'auto')
