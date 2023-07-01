class Livro
  attr_accessor :titulo, :autor, :valor, :quantidade_estoque

  def initialize(titulo, autor, valor, quantidade_estoque)
    @titulo = titulo
    @autor = autor
    @valor = valor
    @quantidade_estoque = quantidade_estoque
  end
end

# Criando uma instância da classe Livro para cada livro
livro1 = Livro.new("O Arco-Íris da Gravidade", "Thomas Pynchon", 29.90, 10)
livro2 = Livro.new("Outro Livro", "Autor Desconhecido", 19.99, 5)
livro3 = Livro.new("Mais um Livro", "Autor Fantástico", 24.50, 3)

# Criação de um hash para mapear os títulos aos objetos Livro correspondentes
livros = {
  "O Arco-Íris da Gravidade" => livro1,
  "Outro Livro" => livro2,
  "Mais um Livro" => livro3
}

print "Insira um título de livro: "
titulo = gets.chomp

# Verificação se o livro existe no hash
if livros.key?(titulo)
  livro = livros[titulo]
  puts "Autor: #{livro.autor}"
  puts "Valor: R$ #{livro.valor}"
  puts "Quantidade em estoque: #{livro.quantidade_estoque}"
else
  puts "Livro não encontrado."
end