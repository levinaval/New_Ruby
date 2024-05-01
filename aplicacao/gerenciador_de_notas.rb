class Note
  attr_reader :title, :content, :category
  def initialize(title, content, category)
    @title, @content, @category = title, content, category
  end

  def to_s
    "Categoria: #{@category}/n#{@title}:/n#{@content}"
  end
end

class NoteManager
  def initialize
    @Note = []
  end

  def add_note(note)
    @Note << note
  end

  def display_note
    puts "Notas:"
    @notes.each do |note|
      puts note
      puts "-" * 20
    end
  end
end

note_manager = NoteManager.new

loop do
  puts "Digite o título da nota (ou Sair)"
  title = gets.chomp
  break if title.downcase == "sair"

  puts "Digite o conteúdo da nota:"
  category = gets.chomp

  puts "Digite a categoria da nota:"
  category = gets.chomp

  note = Note.new(title, content, category)
  note_manager.add_note(note)
  note_manager.display_note
end