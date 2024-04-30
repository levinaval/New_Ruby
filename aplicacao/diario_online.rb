class DiaryEntry
  attr_reader :date, :content

  def initialize(date, content)
    @date, @content = date, content
  end

  def to_s
    "#{@date}:\n#{@content}"
  end
end

class OnlineDiary
  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries << entry
  end

  def display_entries
    puts "Entradas do Diário:"
    @entries.each do |entry|
      puts entry
      puts "-" * 20
    end
  end
end

online_diary = OnlineDiary.new

loop do
  puts "Digite a data da entrada (ou 'sair' para sair):"
  date = gets.chomp
  break if date.downcase == 'sair'
  
  puts "Digite o conteúdo da entrada:"
  content = gets.chomp

  entry = DiaryEntry.new(date, content)
  online_diary.add_entry(entry)
  online_diary.display_entries
end
