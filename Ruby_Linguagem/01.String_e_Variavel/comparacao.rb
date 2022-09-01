#-1 se other_stringfor maior.
#
#0 se os dois forem iguais.
#
#1 se other_stringfor menor.
#
#nilse os dois são incomparáveis.
#
#'foo'  <=>  'foo'  # => 0 
#'foo'  <=>  'comida'  # => -1 
#'comida'  <=>  'foo'  # => 1 
#' foo'  <=>  'foo'  # => -1 
#'foo'  <=>  'FOO'  # => 1 
#'foo'  <=>  1  # => nil

a = 5
b = 3

puts a <=> b