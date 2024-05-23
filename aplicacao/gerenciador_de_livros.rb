# Vamos criar um app simples para gerenciar livros.

# Definição da classe Book para representar um livro
class Book
  attr_reader :title, :author, :genre  # Cria métodos de leitura para os atributos title, author e genre

  # Método inicializador, chamado quando um novo objeto Book é criado
  def initialize(title, author, genre)
    @title, @title.downcase!, @author, @genre = title, author, genre  # Atribui os parâmetros passados aos atributos da instância
  end

  # Método para retornar os detalhes do livro como uma string formatada
  def to_s
    "#{@title} - #{@title} - #{@genre}"  # Concatena os detalhes do livro em uma string
  end
end

# Definição da classe BookManager para gerenciar vários livros
class BookManager
  def initialize
    @books = []  # Inicializa um array vazio para armazenar os livros
  end  

  # Método para adicionar um novo livro à lista de livros
  def add_book(book)
    @books << book  # Adiciona o livro ao array de livros
  end

  # Método para exibir todos os livros registrados
  def display_books
    puts "Lista de livros:"  # Imprime o cabeçalho
    @books.each_with_index do |book, index|  # Itera sobre cada livro no array com índice
      puts "#{index + 1}. #{book}"  # Imprime o índice e os detalhes do livro
    end
  end
end

# Cria uma nova instância de BookManager
book_manager = BookManager.new

# Loop para adicionar livros ao registro
loop do
  puts "Digite o título do livro (ou 'Sair'):"
  title = gets.chomp  # Lê o título do livro do usuário
  break if title.downcase == 'sair'  # Sai do loop se o usuário digitar 'sair'

  puts "Digite o nome do autor:"
  author = gets.chomp  # Lê o nome do autor do usuário

  puts "Digite o gênero do livro:"
  genre = gets.chomp  # Lê o gênero do livro do usuário

  # Cria uma nova instância de Book com os dados fornecidos e adiciona ao gerenciador de livros
  book = Book.new(title, author, genre)
  book_manager.add_book(book)

  # Exibe todos os livros registrados após adicionar o novo livro
  book_manager.display_books
end
