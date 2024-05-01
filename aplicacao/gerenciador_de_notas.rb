class Note
  attr_reader :title, :content, :category

  def initialize(title, content, category)
    @title = title
    @content = content
    @category = category
  end

  def to_s
    "Categoria: #{@category}\n#{@title}:\n#{@content}"
  end
end

class NoteManager
  def initialize
    @notes = []
  end

  def add_note(note)
    @notes << note
  end

  def display_notes
    puts "Notas:"
    @notes.each do |note|
      puts note
      puts "-" * 20
    end
  end
end

note_manager = NoteManager.new

loop do
  puts "Digite o título da nota (ou 'sair' para sair):"
  title = gets.chomp
  break if title.downcase == 'sair'
  
  puts "Digite o conteúdo da nota:"
  content = gets.chomp
  
  puts "Digite a categoria da nota:"
  category = gets.chomp
  puts "\n"

  note = Note.new(title, content, category)
  note_manager.add_note(note)
  note_manager.display_notes
end
