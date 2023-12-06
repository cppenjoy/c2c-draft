stmt_fn_decl -> storage_modifier? type_name Identifier '(' fn_param_decl? ')' block
fn_param_decl -> type_name Identifier (',' type_name identifier)*
