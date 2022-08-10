##Escreva um programa que leia um número e mostre se ele é múltiplo de 7.

puts "Dígite um número."
number = gets.chomp.to_i

resolt = number * 7

def decision(resolt)
  if resolt <= 0
    puts "Resultado é #{resolt} Este não é múltiplo de 7."
  else
    puts "Resultado é #{resolt} Este é múltiplo de 7."
  end
end

puts decision(resolt)