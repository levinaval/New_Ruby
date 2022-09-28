#Escreva um programa que leia dois números e informe se o maior é múltiplo do menor.

print "Digite o número maior: "
maior = gets.to_i

print "Digite o número menor que o primeiro: "
menor = gets.to_i

resultado =
if maior % menor == 0 then "É multiplo"
else                       "Não é multiplo" end

puts "O número #{menor}, #{resultado} do maior"