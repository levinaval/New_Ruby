puts "Primeiro número da Multiplicação: "
 x = gets.chomp.to_i
puts "O sendudo: "
 y = gets.chomp.to_i

 class Multiplicacao
  def initialize(x, y)
    @x, @y = x, y
  end

  def calcular
    mult = @x, @y
    puts "Resultado: "
    puts mult
  end
 end