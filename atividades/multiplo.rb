##Escreva um programa que leia um número e mostre se ele é múltiplo de 7.

print "Digite um número: "
x = gets.to_i

def multiplo(x)
 if x % 7 == 0 then
   puts "#{x} é multiplo de 7."
  else
   puts "#{x} não é multiplo de 7."
 end
end

multiplo(x)