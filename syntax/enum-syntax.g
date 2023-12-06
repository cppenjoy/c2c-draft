stmt_enum_decl -> 'enum' 'class'?: identifier '{' enum_list '}' ';'
enum_list -> identifier ('=' number_literal)? (',' identifier ('=' number_literal)?)*
