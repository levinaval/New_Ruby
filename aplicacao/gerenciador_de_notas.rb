# Vamos criar um app simples para gerenciar notas.

# Definição da classe Note para representar uma nota
class Note
  attr_reader :title, :content, :category  # Cria métodos de leitura para os atributos title, content e category

  # Método inicializador, chamado quando um novo objeto Note é criado
  def initialize(title, content, category)
    @title = title
    @content = content
    @category = category  # Atribui os parâmetros passados aos atributos da instância
  end

  # Método para retornar os detalhes da nota como uma string formatada
  def to_s
    "Categoria: #{@category}\n#{@title}:\n#{@content}"  # Concatena os detalhes da nota em uma string
  end
end

# Definição da classe NoteManager para gerenciar várias notas
class NoteManager
  def initialize
    @notes = []  # Inicializa um array vazio para armazenar as notas
  end

  # Método para adicionar uma nova nota ao registro
  def add_note(note)
    @notes << note  # Adiciona a nota ao array de notas
  end

  # Método para exibir todas as notas registradas
  def display_notes
    puts "Notas:"  # Imprime o cabeçalho
    @notes.each do |note|  # Itera sobre cada nota no array
      puts note  # Usa o método to_s de Note para imprimir os detalhes da nota
      puts "-" * 20  # Imprime uma linha de separação
    end
  end
end

# Cria uma nova instância de NoteManager
note_manager = NoteManager.new

# Loop para adicionar notas ao registro
loop do
  puts "Digite o título da nota (ou 'sair' para sair):"
  title = gets.chomp  # Lê o título da nota do usuário
  break if title.downcase == 'sair'  # Sai do loop se o usuário digitar 'sair'
  
  puts "Digite o conteúdo da nota:"
  content = gets.chomp  # Lê o conteúdo da nota do usuário
  
  puts "Digite a categoria da nota:"
  category = gets.chomp  # Lê a categoria da nota do usuário
  puts "\n"

  # Cria uma nova instância de Note com os dados fornecidos e adiciona ao gerenciador de notas
  note = Note.new(title, content, category)
  note_manager.add_note(note)

  # Exibe todas as notas registradas após adicionar a nova nota
  note_manager.display_notes
end
