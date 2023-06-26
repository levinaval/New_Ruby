print "Escreva um título de livro: "
titulo = gets.chomp

livros = {}
livros["O Arco-Íris da Gravidade"] = :esplendido

puts
puts "Este livro é #{livros[titulo]}"