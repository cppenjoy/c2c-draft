stmt_fn_decl -> storage_modifier? type_name '*'? identifier '(' fn_param_decl? ')' (';' | block)
fn_param_decl -> type_name '*'? identifier (',' type_name '*'? identifier)*