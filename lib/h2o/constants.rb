
module H2o
  BLOCK_START = '{%'
  BLOCK_END = '%}'
  VAR_START = '{{'
  VAR_END = '}}'
  COMMENT_START = '{*'
  COMMENT_END = '*}'
  
  
  NAME_RE = /
    [a-zA-Z_][a-zA-Z0-9_]*
    (?:\.[a-zA-Z0-9][a-zA-Z0-9_-]*)*
  /x
  
  WHITESPACE_RE = /\s+/m

  PIPE_RE = /\|/
  SEPERATOR_RE = /,/
  FILTER_END_RE = /;/
  STRING_RE = /
    (?:
      "([^"\\]*(?:\\.[^"\\]*)*)"
      |
      '([^'\\]*(?:\\.[^'\\]*)*)'
    )
    /xm
  
  NUMBER_RE = /\d+(\.\d*)?/
  OPERATOR_RE = /(?:>=|<=|!=|==|>|<|!|and|not|or)/
end