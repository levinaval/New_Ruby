#Escreva um programa que leia 3 números inteiros e mostre-os em ordem crescente.

puts "Digite núremos em ordem aleatoria."
print "Primeiro número: "
n1 = gets.chomp.to_i

print "Segundo número: "
n2 = gets.chomp.to_i

print "Terceiro número: "
n3 = gets.chomp.to_i

maior = if n1>n2 and n1>n3 then n1 elsif n2>n3 then n2 else n3 end 
menor = if n1<n2 and n1<n3 then n1 elsif n2<n3 then n2 else n3 end
meio  = n1 + n2 + n3 - maior - menor
  
puts "Os números em ordem crescente: #{menor}, #{meio}, #{maior}."