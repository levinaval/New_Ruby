#Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra e quantas voltas ele dá (360 graus = uma volta).


print "digite um número de um ângulo: "
x = gets.chomp.to_i

puts  x / 360 

if x >= 0 && x <= 90
  puts "O ângolo #{x} está no primeiro quadrante"
 elsif x >= 90 && x <= 180
  puts "O ângolo #{x} está no segundo quadrante"
 elsif x >= 180 && x <= 270
  puts "O ângolo #{x} está no terceiro quadrante"
 elsif x >= 270 && x <= 360
  puts "O ângolo #{x} está no quarto quadrante"
 else
  puts "Esse ângulo não existe"
 end
 
