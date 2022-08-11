#Escreva um programa que leia dois números e informe se eles são iguais.

print "Digite o primeiro número:"
number_one = gets.chomp.to_i

print "Digite o segundo número:"
number_two = gets.chomp.to_i

def number_equal(number_one, number_two)
  if number_one == number_two
    puts
    puts "São números iguais!"
  elsif number_one > number_two
    puts
    puts "O primeiro número é maior!"
  elsif number_two > number_one
    puts
    puts "O segundo número é o maior!"
  end
end

puts number_equal(number_one, number_two)