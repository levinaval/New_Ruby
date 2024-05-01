#Vamos criar um app simples para registro de treinos.

class Exercise
  attr_reader :name, :duration, :calories_burned

  def initialize(name, duration, calories_burned)
    @name, @duration, @calories_burned = name, duration, calories_burned
  end

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