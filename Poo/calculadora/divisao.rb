puts "Primeiro número da Divisão: "
 x = gets.chomp.to_i
puts "O sendudo: "
 y = gets.chomp.to_i

 class Divisao
  def initialize(x, y)
    @x, @y = x, y
  end

  def calcular
    div = @x.to_f / @y.to_f
    puts "Resultado: "
    puts div 
  end
 end