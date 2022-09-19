#Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra e quantas voltas ele dá (360 graus = uma volta).


print "digite um número: "
x = gets.chomp.to_i

if x <= 0 && >= 90
  puts "O #{x} está no primeiro quadrante"
 elsif x <= 90 && >= 180
  puts "O #{x} está no segundo quadrante"
 elsif x <= 180 && >= 270
  puts "O #{x} está no terceiro quadrante"
 elsif x <= 270 && >= 360
  puts "O #{x} está no quarto quadrante"
 else
  puts "Esse grau não existe"
 end
 