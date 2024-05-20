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

class FitnessApp
  def initialize
    @exercises = []
  end

  def add_exercise(exercise)
    @exercises << exercise
  end

  def display_exercises
    puts "Registro de Exercícios:"
    @exercises.each do |exercise|
      puts exercise
    end
  end
end

fitness_app = FitnessApp.new

loop do
  puts ""
  puts "Digite o nome do exercício (ou 'Sair'):"
  name = gets.chomp
  break if name.downcase == 'sair'

  puts "digite a duração do exercício(em minutos):"
  duration = gets.to_i

  puts "Digite as calorias queimandas:"
  calories_burned = gets.to_i
  puts ""

  exercise = Exercise.new(name, duration, calories_burned)
  fitness_app.add_exercise(exercise)
  fitness_app.display_exercises
end