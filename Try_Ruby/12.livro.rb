livros = {
  "O Arco-Íris da Gravidade" => :esplendido_uma_obra_prima,
  "Outro Livro" => :maravilhoso,
  "Mais um Livro" => :fantastico
}

print "Escreva um título de livro: "
titulo = gets.chomp

puts
puts "Este livro é #{livros[titulo]}" if livros.key?(titulo)