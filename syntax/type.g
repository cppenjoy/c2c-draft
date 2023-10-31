type_qualifier -> ('const', 'volatile')
storage_modifier -> ('static' | 'extern')
type_name -> type_qualifier? '*'? type
type -> ('void' | 'char' | 'bool' | 'short' | 'int' | 'long' | 'float' | 'double' | 'auto')