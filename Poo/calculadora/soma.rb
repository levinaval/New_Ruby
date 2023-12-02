puts "Primeiro número da Soma: "
 x = gets.chomp.to_i
puts "O sendudo: "
 y = gets.chomp.to_i

 class Soma
  def initialize(x, y)
    @x, @y =x, y
  end

  def calcular
    soma = @x + @y
    puts "Resultado: "
    puts soma
  end
 end