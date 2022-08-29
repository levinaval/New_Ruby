# Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra. 

print "Digite um número para a Eixo X: "
x = gets.chomp.to_i

print "Digite um número para a Eixo Y: "
y = gets.chomp.to_i

if x > 0 && y > 0
  puts "Primeiro quadrante"
 elsif x < 0 && y > 0
  puts "Segundo quadrante"
 elsif x < 0 && y < 0
  puts "Terceiro quadrante"
 elsif x > 0 && y < 0
  puts "Quarto quadrante"
 elsif y = 0 && x > 0
  puts "Eixo x positivo"
 elsif y = 0 && x < 0
  puts "Eixo x negativo" 
 elsif x = 0 && y > 0
  puts "Eixo y positivo"
 elsif x = 0 && y < 0
  puts "Eixo y negativo"
 elsif x = 0 e y = 0
  puts "Origem dos eixos"
 else
  puts
end
