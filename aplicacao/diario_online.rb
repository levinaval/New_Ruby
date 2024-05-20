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
    @entries = [] # Inicializa um array vazio para armazenar as entradas do diário.
  end
# Método para exibir todas as entradas do diário.
  def add_entry(entry)
    @entries << entry # Adiciona a entrada ao array de entradas.
  end
# Método para exibir todas as entradas do diário.
  def display_entries
    puts "Entradas do Diário:" # Imprime o cabeçalho.
    @entries.each do |entry| # Itera sobre cada entrada no array.
      puts entry # Usa o método to_s de DiaryEntry para imprimir a entrada
      puts "-" * 20 # Imprime uma linha de separação
    end
  end
end
# Cria uma nova instância de OnlineDiary
online_diary = OnlineDiary.new
# Loop para adicionar entradas ao diário.
loop do
  puts "Digite a data da entrada (ou 'sair' para sair):"
  date = gets.chomp # Lê a data da entrada do usuário.
  break if date.downcase == 'sair' # Sai do loop se o usuário di
  
  puts "Digite o conteúdo da entrada:"
  content = gets.chomp

  entry = DiaryEntry.new(date, content)
  online_diary.add_entry(entry)
  online_diary.display_entries
end
