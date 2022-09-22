
print "Digite um ângulo: "
angulo_entrada = gets.to_i

angulo = angulo_entrada % 360
voltas = angulo_entrada / 360

quadrante = 
  if    angulo <  90 then "primeiro" 
  elsif angulo < 180 then "segundo"
  elsif angulo < 270 then "terceiro"
  else                    "quarto"   end

puts "O ângulo #{angulo_entrada} dá #{voltas} voltas e fica no #{quadrante} quadrante."