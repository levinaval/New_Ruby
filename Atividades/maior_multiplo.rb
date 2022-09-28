#Escreva um programa que leia dois números e informe se o maior é múltiplo do menor.

print "Digite o número maior: "
maior = gets.to_i

print "Digite o número menor que o primeiro: "
menor = gets.to_i

if maior % menor == 0 
  puts "É multiplo do menor!"
else
  puts "Não é multiplo do menor"

end