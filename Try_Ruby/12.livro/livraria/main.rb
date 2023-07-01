require_relative 'autor'
require_relative 'titulo'
require_relative 'valor'
require_relative 'quant_estoque'

print "Escreva o nome do livro: "
titulo = gets.chomp

autor = Autor.get_autor(titulo)
titulo = Titulo.get_titulo(titulo)
valor = Valor.get_valor(titulo)
quantidade = QuantidadeNoEstoque.get_quantidade

puts "Autor: #{autor}"
puts "Título: #{titulo}"
puts "Valor: R$ #{valor}"
puts "Quantidade em estoque: #{quantidade}"