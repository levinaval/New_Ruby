#Escreva um programa que leia um número real e faça o arredondamento para inteiro. Se a parte fracionária for maior do que 0.5 o arredondamento deve ser feito para o próximo inteiro. 

print "Escreva um Número real: "
number_real = gets.chomp.to_f

if number_real >= 0.5
  puts number_real + 1
elsif number_real == 1
  puts number_real
end