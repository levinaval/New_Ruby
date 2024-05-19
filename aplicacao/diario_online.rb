#Vamos criar um app simples para diarios.

# Classe DiaryEntry para representar uma entrada no diário.
class DiaryEntry
  attr_reader :date, :content # Cria método de leitura para os atributos date e content.

  # Método inicializador, chamado quando um novo objeto DiaryEntry é criado.
  def initialize(date, content)
    @date, @content = date, content # Atribui os parâmetros passados aos atributos da instância.
  end

  # Método para retornar a entrada do díario como uma string formatada.
  def to_s
    "#{@date}:\n#{@content}"
  end
end
# Classe OnlineDiary para gerenciar várias entradas do diário.
class OnlineDiary
  def initialize
    @entries = [] # Inicializa
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
