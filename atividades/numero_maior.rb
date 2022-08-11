#Escreva um programa que leia dois números e mostre o maior 

print "informe o primeiro número:"
first_number = gets.chomp.to_i

print "informe o segundo número:"
second_number = gets.chomp.to_i

def higher_number(first_number, second_number)
 if first_number > second_number
  puts
   puts "O número maior é: #{first_number}"
 elsif second_number > first_number
  puts
  puts "O número maior é: #{second_number}"
 else
  puts
  puts "Os números são iguais."
 end
end

puts higher_number(first_number, second_number)