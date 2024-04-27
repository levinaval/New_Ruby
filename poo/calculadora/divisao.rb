puts "Primeiro número da Divisão: "
 x = gets.chomp.to_f
puts "O sendudo: "
 y = gets.chomp.to_f

 class Divisao
  def initialize(x, y)
    @x, @y = x, y
  end

  def calcular
    div = @x.to_f / @y.to_f
    puts "O resultado da Divisão é: #{div}"
  end
 end