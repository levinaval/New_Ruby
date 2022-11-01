#Escreva um programa que leia um número real e faça o arredondamento para inteiro. Se a parte fracionária for maior do que 0.5 o arredondamento deve ser feito para o próximo inteiro. 

print "Escreva um Número real: "
real = gets.chomp

inteiro = real.to_i
fracao = real.to_f - inteiro

redondo = inteiro + if fracao > 0.5 then 1 else 0 end

puts "#{real} arredondado para inteiro é #{redondo}."