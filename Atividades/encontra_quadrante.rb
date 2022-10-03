# Escreva um programa que leia um número inteiro que corresponde a um ângulo e informe em qual quadrante este ângulo se encontra. 

print "Digite um número para a Eixo X: "
x = gets.chomp.to_i

print "Digite um número para a Eixo Y: "
y = gets.chomp.to_i

quadrante = 
if    x > 0 && y > 0 then  "Primeiro quadrante"
elsif x < 0 && y > 0 then  "Segundo quadrante"
elsif x < 0 && y < 0 then  "Terceiro quadrante"
elsif x > 0 && y < 0 then  "Quarto quadrante"
elsif y = 0 && x > 0 then  "Eixo x positivo"
elsif y = 0 && x < 0 then  "Eixo x negativo" 
elsif x = 0 && y > 0 then  "Eixo y positivo"
elsif x = 0 && y < 0 then  "Eixo y negativo"
elsif x = 0 && y = 0 then  "Origem dos eixos" end
#else                             

puts "O número digitado #{x} e #{y} esta no #{quadrante}"