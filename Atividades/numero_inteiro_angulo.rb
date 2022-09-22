#Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra e quantas voltas ele dá (360 graus = uma volta).


print "digite um número de um ângulo: "
x = gets.chomp.to_i

v = x / 360 
puts v
if v >= 0.000 && v <= 0.090
  puts "Um quarto de volta"
 elsif v >= 0.90 && v <= 0.179
  puts "Dois quarto de volta"
 elsif v >= 0.180 && v <= 0.269
  puts "Trẽs quarto de volta"
 elsif v >= 0.270 && v <= 0.359
  puts "Quatro quarto de volta"
 elsif v >= 0.360
  puts "#{v} volta(s)"
end

if x >= 0.000 && x <= 0.089
  puts "O ângolo #{x} está no primeiro quadrante"
 elsif x >= 0.090 && x <= 0.179
  puts "O ângolo #{x} está no segundo quadrante"
 elsif x >= 0.180 && x <= 0.269
  puts "O ângolo #{x} está no terceiro quadrante"
 elsif x >= 0.270 && x <= 0.359
  puts "O ângolo #{x} está no quarto quadrante"
 
 end
 
