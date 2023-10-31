stmt_struct_decl -> access-modifier? ('struct' | 'class') identifier struct-body ';'
struct-body -> (struct_field | struct_bitfield | struct_dtor | struct_fn_member)*

struct_field -> access-modifier? type_name '*'? identifier ('{' primary_expression '}')? ';'
struct_fn_member -> access-modifier? type_name '*'? identifier '(' fn_param_decl? ')' (';' | block)
struct_bitfield -> access_modifier? type_name identifier ':' number_literal ';'
struct_dtor -> access_modifier? '~' identifier (';' | block)

access-modifier -> ('public' | 'private')