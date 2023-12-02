puts "Primeiro número da Subtração: "
 x = gets.chomp.to_i
puts "O sendudo: "
 y = gets.chomp.to_i

 class Subtracao
  def initialize(x, y)
    @x, @y = x, y
  end

  def calcular
    subt = @x - @y
    puts "Resultado: "
    puts subt
  end
 end