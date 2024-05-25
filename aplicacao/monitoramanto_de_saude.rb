# Definição da classe HealthData para representar dados de saúde diários
class HealthData
  attr_reader :date, :heart_rate, :activity_level, :sleep_quality  # Cria métodos de leitura para os atributos

  # Método inicializador, chamado quando um novo objeto HealthData é criado
  def initialize(date, heart_rate, activity_level, sleep_quality)
    @date, @heart_rate, @activity_level, @sleep_quality = date, heart_rate, activity_level, sleep_quality  # Atribui os parâmetros passados aos atributos da instância
  end

  # Método para retornar os detalhes dos dados de saúde como uma string formatada
  def to_s
    "Data: #{@date}\nBatimentos Cardíacos: #{@heart_rate}\nNível de Atividade: #{@activity_level}\nQualidade do Sono: #{@sleep_quality}"  # Concatena os detalhes dos dados de saúde em uma string
  end
end

# Definição da classe HealthApp para gerenciar várias entradas de dados de saúde
class HealthApp
  def initialize
    @health_data = []  # Inicializa um array vazio para armazenar os dados de saúde
  end

  # Método para adicionar uma nova entrada de dados de saúde ao registro
  def add_data(data)
    @health_data << data  # Adiciona a entrada de dados ao array de dados de saúde
  end

  # Método para exibir todas as entradas de dados de saúde registradas
  def display_data
    puts "Dados de Saúde:"  # Imprime o cabeçalho
    @health_data.each do |data|  # Itera sobre cada entrada de dados no array
      puts data  # Imprime os detalhes da entrada de dados
      puts "-" * 20  # Imprime uma linha separadora
    end
  end
end

# Cria uma nova instância de HealthApp
health_app = HealthApp.new

# Loop para adicionar entradas de dados de saúde ao registro
loop do
  puts "Digite a data (ou 'sair' para sair):"
  date = gets.chomp  # Lê a data do usuário
  break if date.downcase == 'sair'  # Sai do loop se o usuário digitar 'sair'
  
  puts "Digite os batimentos cardíacos:"
  heart_rate = gets.chomp.to_i  # Lê os batimentos cardíacos do usuário e converte para inteiro
  
  puts "Digite o nível de atividade:"
  activity_level = gets.chomp  # Lê o nível de atividade do usuário
  
  puts "Digite a qualidade do sono:"
  sleep_quality = gets.chomp  # Lê a qualidade do sono do usuário

  # Cria uma nova instância de HealthData com os dados fornecidos e adiciona ao gerenciador de dados de saúde
  data = HealthData.new(date, heart_rate, activity_level, sleep_quality)
  health_app.add_data(data)

  # Exibe todas as entradas de dados de saúde registradas após adicionar a nova entrada
  health_app.display_data
end
