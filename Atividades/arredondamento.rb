#Escreva um programa que leia um número real e faça o arredondamento para inteiro. Se a parte fracionária for maior do que 0.5 o arredondamento deve ser feito para o próximo inteiro. 

print "Escreva um Número real: "
real = gets.chomp.to_f

if real >= 0.5
  puts real + 1
elsif real == 1
  puts real
end