# Crie uma classe chamada Fraction para representar uma fração matemática.
#Ela deve ter os seguintes métodos:

# Fraction#initalize - Construtor para receber o numerador e denominador

# Fraction#to_f - Método para conversão para Float

# Fraction#to_s - Método que retorna um string com a fração

# Fraction#* - Método que recebe outro objeto de Fração ou número inteiro e retorna uma novo objeto do tipo Fraction com o resultado da multiplicação

#Métodos de acesso às variáveis de numerador e denominador

numerador = gets.chomp#.to_f
puts
denominador = gets.chomp#.to_f

class Fraction
  def initialize(numerador, denominador)
    @numerador, @denominador = numerador, denominador
  end

  def convercao
    numerador.to_f = @numerador
    denominador.to_f = @denominador 
  end

  def comunicar
    puts "A nossa fração é #{@numerador.to_f} / #{@denominador.to_f}"
  end

  def multiplicar
   @numerador.to_f * @denominador.to_f
  end
end

d1 = Fraction.new(numerador, denominador)
d1.comunicar
d1.multiplicar