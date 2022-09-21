#Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra e quantas voltas ele dá (360 graus = uma volta).


print "digite um número de um ângulo: "
x = gets.chomp.to_i

v = x / 360 

if v >= 0 && v <= 90
  puts "Um quarto de volta"
 elsif v >= 90 && v <= 180
  puts "Does quarto de volta"
 elsif v >= 180 && v <= 270
  puts "Trẽs quarto de volta"
 elsif v >= 270 && v <= 360
  puts "Quatro quarto de volta"
 else
  puts "#{v} volta(s)"
end

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
 
