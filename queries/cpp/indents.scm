; extends

(namespace_definition
  body: (declaration_list) @indent.begin)

(declaration_list
  "}" @indent.end)
