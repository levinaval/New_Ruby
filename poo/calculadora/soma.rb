puts "Primeiro número da Soma: "
 x = gets.chomp.to_i
puts "O sendudo: "
 y = gets.chomp.to_i

 class Soma
  def initialize(x, y)
    @x, @y = x, y
  end

  def calcular
    soma = @x + @y
    puts "O resultado da Soma é: #{soma}"
  end
 end