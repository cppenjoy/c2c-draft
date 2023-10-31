/*
    This grammar is for the c2c programming language.
    Use this grammar if you want to understand the syntax of the language and its constructions, as well as if you are writing a parser of this grammar.

    This grammar does not consider conditional compilation, and preprocessor directives.

    Each nonterminal is a node of the tree.

                                                                                                    Convention
    * S is the starting symbol
    * Definition of a nonterminal via ->
    * stmt_ prefix for the statements

                                                                                                    Rule Convention
    | - or
    ? - optional
    * - the marked expression can be repeated zero or more times
    Grouping with ()

    Grammar rules in ../syntax/
*/