class Book
attr_reader :title, :author, :genre

  def initialize(title, author, genre)
    @title,@author,@genre = title, author, genre
  end

  def to_s
    "#{@title} - #{@author} #{@genre}"
  end
end

class BookManager
  def initialize
    @books = []
  end  

  def add_book(book)
    @books << book
  end

  def display_books
    puts "Lista de livros:"
    @books.each_with_index do |book, index|
      puts "#{index + 1}. #{book}"
    end
  end
end

book_manager = BookManager.new

loop do
  puts "Digite o títolo do livro ( 0 para Sair):"
    title = gets.chomp.to_s.downcase
    break if title == 0

    puts "Digite o nome so autor:"
    author = gets.chomp

    puts "Digite o gênero do livro:"
    genre = gets.chomp

    book = Book.new(title, author, genre)
    book_manager.add_book(book)
    book_manager.display_books
end