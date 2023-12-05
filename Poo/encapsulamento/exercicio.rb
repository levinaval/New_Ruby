#Escreva um programa que leia 4 números e mostre o maior.

puts "Primeiro número"
n1 = gets.chomp.to_f
puts "Segundo número"
n2 = gets.chomp.to_f
puts "Terceiro número"
n3 = gets.chomp.to_f
puts "Quarto número"
n4 = gets.chomp.to_f

class NumeroMaior
  attr_reader :n1, :n2, :n3, :n4
  def initialize(n1, n2, n3, n4)
    @n1, @n2, @n3, @n4 = n1, n2, n3, n4
  end

  def maior
    if    @n1 > @n2 and @n1 > @n3 and @n1 > @n4 then "O número maior é #{@n1}"
    elsif @n2 > @n1 and @n2 > @n3 and @n2 > @n4 then "O número maior é #{@n2}"
    elsif @n3 > @n1 and @n3 > @n2 and @n3 > @n4 then "O número maior é #{@n3}"
    elsif @n4 > @n1 and @n4 > @n2 and @n4 > @n3 then "O número maior é #{@n4}"
    else               "Não tem compareção" end
  end
end

m = NumeroMaior.new(n1, n2, n3, n4)

m.maior