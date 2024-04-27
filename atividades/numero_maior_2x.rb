#Escreva um programa que leia dois números e mostre o maior 

#print "informe o primeiro número:"
#first_number = gets.chomp.to_i
#
#print "informe o segundo número:"
#second_number = gets.chomp.to_i
#
#def higher_number(first_number, second_number)
# if first_number > second_number
#  puts
#   puts "O número maior é: #{first_number}"
# elsif second_number > first_number
#  puts
#  puts "O número maior é: #{second_number}"
# else
#  puts
#  puts "Os números são iguais."
# end
#end
#
#puts higher_number(first_number, second_number)

#or

print "Primeiro número: "
n1 = gets.chomp.to_i

print "Segundo número: "
n2 = gets.chomp.to_i

print "Terceiro número: "
n3 = gets.chomp.to_i

print "Quarto número: "
n4 = gets.chomp.to_i

maior = 
if n1 > n2 and n1 > n3 and n1 > n4 then n1
elsif n2 > n1 and n2 > n3 and n2 > n4 then n2 
elsif n3 > n1 and n3 > n2 and n3 > n4 then n3
elsif n4 > n1 and n3 > n2 and n4 > n3 then n4
else           "Não tem combinação"    end 
  
puts "O número maior é o #{maior}"