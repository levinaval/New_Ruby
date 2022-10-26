#Escreva um programa que leia um número real e faça o arredondamento para inteiro. Se a parte fracionária for maior do que 0.5 o arredondamento deve ser feito para o próximo inteiro. 

print "Escreva um Número real: "
n_real = gets.chomp.to_f

if n_real == 0.5
  puts n_real + 1
elsif n_real == 1
  puts n_real
end