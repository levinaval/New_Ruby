#Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra e quantas voltas ele dá (360 graus = uma volta).


print "digite um número de um ângulo: "
angulo = gets.to_i

#angulo = angulo #% 360
voltas = angulo / 360

quadrante = 
 if    angulo < 90  then "Primeiro"
 elsif angulo < 180 then "Segundo"
 elsif angulo < 270 then "Terceiro"
 else                    "Quarto"  end

  puts "O ângulo #{angulo} dá #{voltas} voltas e fica no #{quadrante} quadrante."

#v = x / 360 
#
#if v >= 0.00 && v <= 0.90
#  puts "Um quarto de volta"
# elsif v >= 0.90 && v <= 0.179
#  puts "Dois quarto de volta"
# elsif v >= 0.180 && v <= 0.269
#  puts "Trẽs quarto de volta"
# elsif v >= 0.270 && v <= 0.359
#  puts "Quatro quarto de volta"
# elsif v >= 0.360
#  puts "#{v} volta(s)"
#end

#if x >= 0 && x <= 89
#  puts "O ângolo #{x} está no primeiro quadrante"
# elsif x >= 90 && x <= 179
#  puts "O ângolo #{x} está no segundo quadrante"
# elsif x >= 180 && x <= 269
#  puts "O ângolo #{x} está no terceiro quadrante"
# elsif x >= 270 && x <= 359
#  puts "O ângolo #{x} está no quarto quadrante"
# 
# end
 
