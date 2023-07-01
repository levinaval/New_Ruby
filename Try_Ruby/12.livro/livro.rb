# Você criou um hash vazio. Um hash é como um array, porém cada um dos seus elementos tem um nome.
# Nós iremos adicionar algumas análises de livro ao nosso hash.

class Livro
  def initialize
    @titulo = {
      "Em Busca do Tempo Perdido" => :Marcel_Proust,
      "Ulysses" => :James_Joyce,
      "Dom Quixote" => :Miguel_de_Cervantes,
    }
  end
  def pedir_titulo
    print "Escreva um título de livro: "
    titulo = gets.chomp

    puts
    puts "Este livro foi escrito por #{@titulo[titulo]}" if @titulo.key?(titulo)
  end
end

livro = Livro.new

