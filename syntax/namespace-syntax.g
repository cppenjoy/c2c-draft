namespace_decl -> 'namespace' identifier ( '{' namespace-block '}' )? ';'
namespace-block -> (namespace_decl | interface_decl | stmt_var_decl | stmt_fn_decl | stmt_enum_decl | stmt_struct_decl)*