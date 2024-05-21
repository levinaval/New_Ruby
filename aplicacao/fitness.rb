#Vamos criar um app simples para registro de treinos.

# Definição da Classe Exercise para representar um exercício.
class Exercise
  attr_reader :name, :duration, :calories_burned # Cria métodos de leitura para os atributos name, duration e calories_burned.
 # Método inicializador, chamado quando um novo objetivo exercise é criado.
  def initialize(name, duration, calories_burned)
    @name, @duration, @calories_burned = name, duration, calories_burned # Atribui os parâmetros passados aos atributos da instância.
  end
# Método para retornar os detalhes do exercício como uma string formatada.
  def to_s
    "Exercício: #{name} - #{@duration} minutos, calorias queimadas: #{@calories_burned}"
  end
end
# Definição da classe FitnessApp para gerenciar vários exercícios.
class FitnessApp
  def initialize
    @exercises = [] # Inicializa um array vazio para armazenar os exercícios. 
  end
# Método para adicionar um novo exercício ao registro.
  def add_exercise(exercise)
    @exercises << exercise # Adiciona o exerciçio ao array de exercícios
  end
# Método para exibir todos os exercícios registrados
  def display_exercises
    puts "Registro de Exercícios:" # Imprime o cabeçalho.
    @exercises.each do |exercise| # Itera sobre cada exercício no array
      puts exercise # Usa o método to_s de Exercise para imprimir os detalhes do exercício. 
    end
  end
end
# Cria uma nova instâcia de FitnessApp.
fitness_app = FitnessApp.new
# Loop para adicionar exercícios ao registro.
loop do
  puts ""
  puts "Digite o nome do exercício (ou 'Sair'):"
  name = gets.chomp # Lê o nome do exercício do usuário.
  break if name.downcase == 'sair'# Sai do loop se o usuário digitar 'sair'.

  puts "digite a duração do exercício(em minutos):"
  duration = gets.to_i # Lê a duração do execício do usuário.

  puts "Digite as calorias queimandas:"
  calories_burned = gets.to_i # Lê as calorias queimadas do usuário.
  puts ""
# Cria uma nova instância de Exercise com os dados fornecidos e adiciona ao registro de treinos.
  exercise = Exercise.new(name, duration, calories_burned)
  fitness_app.add_exercise(exercise)
  # Exibe todos os exercícios resgistrados após adicionar o novo exercício.
  fitness_app.display_exercises
end